<?php
session_start();
$pagename="login"; //Create and populate a variable called $pagename 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>";
echo "<body>";
include ("headfile.html");
echo "<h4>".$pagename."</h4>";
echo "<form action = 'login_process.php' method = 'post'>";
echo "<table id='baskettable'>";
    echo "<tr>";
        echo "<td> email: </td>";
        echo "<td> <input type = 'text' name = 'userEmail' size= '40'> </td>";
    echo "</tr>";

    echo "<tr>";
    echo "<td> Password: </td>";
    echo "<td> <input type = 'text' name = 'userpwd' size= '40'> </td>";
echo "</tr>";

echo "<tr>";
echo "<td><input type='submit' name='loginBtn' value='Login' id='submitbtn'></td>";
echo "</tr>";
echo'</table>';



include("footfile.html"); //include head layout echo
 "</body>";
?>