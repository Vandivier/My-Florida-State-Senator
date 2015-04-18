My Florida State Senator
==============
*Visit [afterecon.com/portfolio](afterecon.com/portfolio) for a working demo.*

Objectives
--------------
- Let's an end user enter zip code to find their State Senator.
- WordPress plug-in using PHP + jQuery AJAX in order to call a MySQL DB.
- User submits information which is used to query DB and find their State Senator.
- Right now it's used for Florida, but can be generalized to other states and races later on.

Setup
--------------
- Download the repository.
- ev_dist_rep, ev_signup, and ev_zip_dist are SQL tables. Import them into your SQL web database.
- Configure your PHP files. Eventually you will be able to do this in a nice WP backend UI, but not yet.
	- The code assumes a MySQLi connection. Enter MySQLi DB connection information at the top of the user data PHP file where the variables are defined as "ENTER_HERE".
	- Enter preferred email configuration for the automatic response email for signups, or disable it.
- Zip the PHP files into a zip file and upload as a WordPress plug-in.
- Then decide where you want the element to display in your website.
	- You select where elements are injected by using the classes .dynamic_area and .dynamic_area2.
	- The app injects a short user form into .dynamic_area or a short user form into .dynamic_area2.