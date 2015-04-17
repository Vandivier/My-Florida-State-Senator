My Florida State Senator
==============

Demo
--------------
Please visit afterecon.com/portfolio to see a working demo.

Objectives
--------------
- Wordpress plug-in using PHP + jQuery AJAX in order to call a MySQL DB.
- User submits information which is used to query DB and find their State Senator.
- Right now it's used for Florida, but can be generalized to other states and races later on.

Setup
--------------
- Download the repository.
- Zip the PHP files into a zip file and upload as a WordPress plug-in. Do not yet activate the plug-in.
- ev_dist_rep, ev_signup, and ev_zip_dist are SQL tables. Import them into your SQL web database.
- After importing the tables, connect your database by editing the PHP plug-in files and entering your password, etc.
    - The code assumes a MySQLi connection.
	- You can do this in the WordPress plug-in editor or wherever.
- Then decide where you want the element to display in your website! Probably you will need to inject via jQuery. Maybe additional options will be added later.
- Optionally, you can use, delete, or override the default styles for the form and output widget.