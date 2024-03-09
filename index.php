<?php
include("db.php"); 
$pagename = "make your home smart"; 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>" . $pagename . "</title>";
echo "<body>";
include("headfile.html");
echo "<h4>" . $pagename . "</h4>";

// create a $SQL variable and populate it with a SQL statement that retrieves product details
$SQL = "select prodId, prodName, prodPicNameSmall, prodDescripShort from Product";

// run SQL query for connected DB or exit and display error message
$exeSQL = mysqli_query($conn, $SQL) or die(mysqli_error($conn));

echo "<table style='border: 0px'>";

while ($arrayp = mysqli_fetch_array($exeSQL)) { // Add condition inside while loop and wrap it in parentheses
    echo "<tr>";
    echo "<td style='border: 0px'>";
    //make the image into an anchor to prodbuy.php and pass the product id by URL as a parameter (the id from the array)
    echo "<a href=prodbuy.php?u_prod_id=".$arrayp['prodId'].">";
    echo "<img src=" . $arrayp['prodPicNameSmall'] . " height=200 width=200>";
    //close the anchor
    echo "</a>";
    echo "</td>";
    echo "<td style='border: 0px'>";
    echo "<p><h5>" . $arrayp['prodName'] . "</h5></p>";
    echo "<p class = updateInfo>".$arrayp['prodDescripShort']."</p>";
    echo "</td>";
    echo "</tr>";
}

echo "</table>";

include("footfile.html"); // Add a semicolon here


include("footfile.html"); //include head layout
echo "</body>";
?>
