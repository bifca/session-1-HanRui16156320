<?php

//Get the SQL Server Configuration File
include 'config.php';

if(!$conn){
	die("Connection Failed");
}

$sort = $_POST['sort'];
$pokedex_name = $_POST['pokedex_name'];
$category = $_POST['category'];
$type1 = $_POST['type1'];
$type2 = $_POST['type2'];


//Write a SQL query that updates the database below.
//The SQL will start INSERT INTO...

$sql = "
UPDATE alola
SET 
    pokedex_name = '".$_POST['pokedex_name']."',
    category = '".$_POST['category']."',
    type1 = '".$_POST['type1']."',
    type2 = '".$_POST['type2']."'
WHERE
    number = ".$_POST['number']."
   ";



//If it is successful it will redirect you to the home page.
if (mysqli_query($conn, $sql)){
	header("Location: form.php");
}
//If it fails, it will tell you it has failed.
else{
	echo "user creation failed"."<br>".mysqli_error($conn);

}
?>
