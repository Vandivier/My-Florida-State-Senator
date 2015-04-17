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

/* include processing script */
$db_script_location = dirname(__FILE__) . '/jv_receive_user_data_v2_150417.php';
require_once $db_script_location;

/* disable admin bar except for admins, and redirect all from back-end except admins */
add_action('wp_head', 'find_sen');

function find_sen() {
	echo '<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
	echo '<script>
		jQuery(function(){
			var new_body_height = jQuery("body").css("height");
			new_body_height -= 252;
			jQuery("body").css("height", new_body_height);
			jQuery(".dynamic_positioning_marker").prepend("<div class=\"dynamic_area\"></div>");
			jQuery(window).scroll(function(){
				var dynamic_height = jQuery(".dynamic_height_marker").height();
				var dynamic_width = jQuery(".static_column").width();
				jQuery(".dynamic_area").css("height", dynamic_height).css("width", dynamic_width);
			});

/* insert html forms for later ajax */

			jQuery(".dynamic_area").append("<form class=\"ev_form\"><input id=\"user_zip\" name=\"user_zip\" placeholder=\"Zip\" required><button type=\"submit\">Send</button></form><div class=\"output_area\"></div>");

			jQuery("#hello").prepend("<div class=\"ev_insert_text\"><form class=\"ev_form\"><input id=\"user_name\" name=\"user_name\" placeholder=\"Name\" required><input id=\"user_email\" name=\"user_email\" placeholder=\"Email\" required><input id=\"user_zip_2\" name=\"user_zip\" placeholder=\"Zip\" required><button id=\"user_sign\" type=\"submit\">Sign</button><div class=\"ev_blurb not_mobile\"></div></form></div><button class=\"video_scroll_button scroller\">Watch the video</button><button class=\"video_scroll_button pet_button\">Read the petition</button>\
\
<div id=\"petition_modal\"><span style=\"font-weight:700;\">Petition\:</span>\
<br><br>\
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.\
<div class=\"pet_close\">X</div></div>");

			jQuery("#petition_modal").dialog({autoOpen:false, width: "80%"});
			jQuery(".pet_close").click(function(){jQuery("#petition_modal").dialog("close");});
			jQuery(".pet_button").click(function(){jQuery("#petition_modal").dialog("open");});
			
/*jquery ajax begin */
			var ev_error_var = "<div class=\"ev_error\">Error: No valid response was available for the information given. Please refresh the page and try again. If the error continues then notify the web administrator.</div>";

			jQuery(".ev_form").submit(function(event){
				event.preventDefault();
				jQuery("html, body").animate({scrollTop: jQuery(".static_column").offset().top}, 2000);
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
/*jquery ajax end*/
		});
	</script>';
}
?>