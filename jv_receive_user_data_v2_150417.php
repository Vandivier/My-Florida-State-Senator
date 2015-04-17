<?php
/** When user data is submitted, it is sent to this script for database transaction processing. **/
if ($_POST["action"] == "user_form") {
/* Configure DB then turn submitted data into combined flat array */
		$submitted_data = $_POST["action_data"];
		$modified_data = str_replace("=","&", $submitted_data);
		$modified_data = str_replace("+"," ", $modified_data);
		$modified_data = explode("&", $modified_data);
		$submit_key = array();
		$submit_value = array();
		$insertion_arr = array();
		$fetched_result_collection = array();
		$fetched_dists = array();
		$body_text = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
		$body_text = rawurlencode($body_text);
		for ($i = 0; $i < count($modified_data); $i+=2) {
			$submit_key[] = $modified_data[$i];
			$submit_value[] = $modified_data[$i + 1];
		}
		$insertion_arr = array_combine($submit_key, $submit_value);

/* insert if key array length. assisted by Pavel stackoverflow.com/questions/3338138/insert-all-post-data-into-mysql-using-php */
		if (count($modified_data) > 2) {

/* decode email then send the auto mail */
			$insertion_arr['user_email'] = rawurldecode($insertion_arr['user_email']);
			$ev_auto_message = '
<html>
<body>
<div>
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
</div>
</body>
</html>
';
			$ev_auto_to = $insertion_arr['user_email'];
			$ev_headers  = 'MIME-Version: 1.0' . "\r\n";
			$ev_headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			$ev_headers .= 'From: XXX <XXX@XXXXXXXX.com>' . "\r\n";

			mail($ev_auto_to, "Thank You", $ev_auto_message, $ev_headers);

/* the insertion */
			function insert_array($conn, $table, $insert_k_v) {
				$insert_query = "INSERT INTO " . $table;
				foreach($insert_k_v as $k => $val) {
					$fis[] = "$k";
					$vas[] = "'$val'";
				}
				$insert_query .= " (".implode(", ", $fis).") VALUES (".implode(", ", $vas).")";
				if (!$conn) { die( 'Could not connect to database. Error: ' . mysqli_error($conn) ); }
				if (mysqli_query($conn, $insert_query)) {
					echo '<div class="confirm_submit">' . mysqli_insert_id($conn) . '</div>';
				}
				else {
					echo '<div class="confirm_submit">Insertion Error.</div>';
				}
			}
			$database_var = mysqli_connect('localhost','DB_USER','DB_PASS','DB_NAME');
			insert_array($database_var, "TABLE_TO_SAVE_NAME", $insertion_arr);
		}
/* obtain rep dist based on user zip */
		$database_var = mysqli_connect('localhost','DB_USER','DB_PASS','DB_NAME');
		if (!$database_var) { die( 'Could not connect to database. Error: ' . mysqli_error($database_var) ); }
		$return_query = "SELECT * FROM ev_zip_dist WHERE rep_zip = '" . $insertion_arr['user_zip'] . "'";
		$mysqli_result = mysqli_query($database_var, $return_query);
		while($single_row = mysqli_fetch_array($mysqli_result, MYSQLI_ASSOC)){
			$fetched_result_collection[] = $single_row;
		}
		if ( count($fetched_result_collection) == '0') { echo '<div class=\"ev_error\">Error: No valid response was available for the information given. Please refresh the page and try again. If the error continues then notify the web administrator.</div>';}
		foreach ($fetched_result_collection as $single_row) {
			$fetched_dists = $single_row['rep_dist'];
		}
		$fetched_dists = explode(",", $single_row['rep_dist']);
/*obtain other rep data from dist */
		foreach ($fetched_dists as $f) {
			$return_query = "SELECT * FROM ev_dist_rep WHERE rep_dist = '" . $f . "'";
			$mysqli_result = mysqli_query($database_var, $return_query);
			while($single_row = mysqli_fetch_array($mysqli_result, MYSQLI_ASSOC)){
				$fetched_result_collection[] = $single_row;
			}
		}
/* modify some data then output */
		$fetched_result_collection[0]['rep_zip'] .= " was the zip code you provided. Please find information for your district below.";
		$fetched_result_collection[0]['rep_dist'] = 'remove';
		if (count($fetched_dists) > '1') {
			$fetched_result_collection[0]['rep_zip'] .= " Note that we found " . count($fetched_dists) . " different State Senate districts which match this zip code.";
		}
		foreach ($fetched_result_collection as $single_row) {
			if ($single_row['rep_display'] !== NULL) {echo '<div class="output_group"><div class="group_head">' . $single_row['rep_display'];}
			if ($single_row['rep_dist'] !== 'remove') {echo '<div class="rep_dist">[' . $single_row['rep_dist'] . ']</div></div>';}
			if ($single_row['rep_phone'] !== NULL) {echo '<div class="rep_phone">' . $single_row['rep_phone'] . '</div>';}
			if ($single_row['rep_email'] !== NULL) {echo '<a href="mailto:' . $single_row['rep_email'] . '&subject=PETITION%20LETTER&body=' . $body_text . '" class="rep_url">Click here to email them.</a></div>';}
		}
		echo '<a href="http://www.myfloridahouse.gov/Sections/Representatives/myrepresentative.aspx" class="video_scroll_button house_rep_button" target="_blank">Click here to find your State Representative</a>';
		mysqli_close($database_var);
		exit;
}
?>