<?php
$dbhost = 'phpmyadmin.ecs.westminster.ac.uk'; //127 .0.0.1
 $dbuser = 'w1939035'; //root
$dbpass = 'WviI3VjrTgO8';  //  '   '
$dbname = 'w1939035_0';    //name of your db
//create a DB connection
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname); 

//if the DB connection fails, display an error message and exit 
if (!$conn) {
    die('Could not connect: ' . mysqli_error($conn));
}

mysqli_select_db($conn,$dbname);
//die('Could not connect: ' . mysqli_error($conn)); }
//select the database mysqli_select_db($conn, $dbname); ?>

