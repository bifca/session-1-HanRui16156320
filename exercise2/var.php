<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "alola pokedex";
$id = 1;
if(isset($_GET["id"])){
   $id = $_GET["id"]; //Selects the information from the title bar i.e. index.php?id=1 or ?id=100. This will make the varable $id = to the value id=
}
$next = $id + 1;
$prev = $id - 1;
if($next > 95){
	$next = 1;
}
if($prev < 1){
	$prev = 95;
}
$address = "index.php?id=";
$nextURL = $address.$next;
$prevURL = $address.$prev;


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
 ?>
