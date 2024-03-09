<?php
include("db.php");
$pagename="a smart buy for a smart home"; //Create and populate a variable called $pagename 
echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet
echo "<title>".$pagename."</title>";
echo "<body>";
include ("headfile.html");
echo "<h4>".$pagename."</h4>";
//retrieve the product id passed from previous page using the GET method and the $_GET superglobal variable //applied to the query string u_prod_id
//store the value in a local variable called $prodid
$prodid=$_GET['u_prod_id'];
//display the value of the product id, for debugging purposes
echo "<p>Selected product Id: ".$prodid."</p>";

// create a $SQL variable and populate it with a SQL statement that retrieves product details
$SQL = "select prodId, prodName, prodPicNameSmall, prodPicNameLarge, prodDescripLong, prodPrice, prodQuantity from Product where prodid =".$prodid;

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
    echo "<p> price £". $arrayp['prodPrice'] . "</P>";
    echo "<p stock >" . $arrayp['prodQuantity'] . "</P>";
    echo "<p class='updateInfo'>Number to be purchased: </p>";
    //create form made of one text field and one button for user to enter quantity
    //the value entered in the form will be posted to the basket.php to be processed
    echo "<form action='basket.php' method='post'>";
   
   echo" <select name= p_quantity>";
   for ($x = 1; $x <= $arrayp['prodQuantity']; $x++) {
   echo "<option value= ".$x.">".$x." </option>";
   }
  echo "</select>";
    //echo "<p class='updateInfo'><input type='text' name='p_quantity' size=5 maxlength=3>";
    echo "<input type='submit' name='submitbtn' value='ADD TO BASKET' id='submitbtn'>"; //pass the product id to the next page basket.php as a hidden value
    echo "<input type='hidden' name='h_prodid' value=".$prodid.">";
    echo "</p>";
    echo "</form>";
    echo "</td>";
    echo "</tr>";
}

echo "</table>";
//display name of the page as window title
//include header layout file
//display name of the page on the web page
//display random text
include("footfile.html"); //include head layout echo "</body>";
?>