<?php
/**
* Plugin Name: Find My Florida State Senator
* Plugin URI: 
* Description: Database functionality and more.
* Version: 0.2
* Author: John Vandivier
* Author URI: 
* License: MIT open source license. Unrestricted use. Credit preferred.
**/

$db_script_location = dirname(__FILE__) . '/jv_receive_user_data_v2_150417.php';
require_once $db_script_location;

add_action('wp_head', 'find_sen');

function find_sen() {?>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
<script>
	/* jQuery inject forms for AJAX, then the AJAX function */
	jQuery(function(){
		jQuery(".dynamic_area").append("<form class=\"ev_form\"><input id=\"user_zip\" name=\"user_zip\" placeholder=\"Zip\" required><button type=\"submit\">Send</button></form><div class=\"output_area\"></div>");
		jQuery(".dynamic_area2").prepend("<div class=\"ev_insert_text\"><form class=\"ev_form\"><input id=\"user_name\" name=\"user_name\" placeholder=\"Name\" required><input id=\"user_email\" name=\"user_email\" placeholder=\"Email\" required><input id=\"user_zip_2\" name=\"user_zip\" placeholder=\"Zip\" required><button id=\"user_sign\" type=\"submit\">Sign</button><div class=\"ev_blurb not_mobile\"></div></form></div>");
		var ev_error_var = "<div class=\"ev_error\">Error: No valid response was available for the information given. Please refresh the page and try again. If the error continues then notify the web administrator.</div>";

		jQuery(".ev_form").submit(function(event){
			event.preventDefault();
			var user_submit_data = jQuery(this).serialize();
			jQuery.ajax({
				type: "POST",
				url: "' . $db_script_location . '",
				data: {action: "user_form", action_data: user_submit_data}
			}).done(function(response){
				if (response !== "") {
					if (response.indexOf("Warning") > 0) {
						jQuery(".output_area").html(ev_error_var);
					} else {
					jQuery(".output_area").html(response);
					}
				} else {
						jQuery(".output_area").html(ev_error_var);
				}
			}).fail(function(response){
						jQuery(".output_area").html(ev_error_var);
			});
		});
	});
</script>
<?
}
?>