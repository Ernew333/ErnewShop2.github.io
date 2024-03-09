<?php
include("db.php");
$pagename="template"; //Create and populate a variable called $pagename 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>";
echo "<body>";
include ("headfile.html");
echo "<h4>".$pagename."</h4>";

$email = $_POST['userEmail'];
$pwd = $_POST['userpwd'];

echo "<p> Entered email: " .$email. "</p>";
echo "<p> entered password: " .$pwd. "</p>"; 

if(empty($email) or empty($pwd))
{
    echo "<p> login failure </p>";
    echo "<p> Form incomplete </p>";
    echo "<p> Go back to <a href= 'login.php'> Login</a></p>";
}
else
{

    $SQL =  "SELECT userId, userType, userFName, usersSName, userEmail, userPassword
              FROM Users 
              WHERE userEmail = '".$email."'";

    
  $exeSQL = mysqli_query($conn, $SQL) or die (mysqli_error($conn));

    $arraythisUser = mysqli_fetch_array($exeSQL);
    $nbOfRecs = mysqli_num_rows($exeSQL);
}

include("footfile.html"); //include head layout echo "</body>";
?>