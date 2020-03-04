<html>

<body>
  <div class="intro"><h1>Edit information</h1></div>
<div align="center">
<div style="width:300px; display :inline-block; background-color:#FFF; " >
<div style="background-color:#555555; padding:3px; color:#fff; font-size: 25px; text-align: center;">
<b>Edit here</b></div>


<div style="margin:20px">

<form action="" method="post">

</form>
<?php
include 'config.php';


$id = $_GET["id"];
$sql = "SELECT number, pokedex_name, category, type1, type2 FROM alola WHERE sort = $id";
	
    $result = mysqli_query($conn, $sql);

   if (mysqli_num_rows($result) > 0) {
       while($row = mysqli_fetch_assoc($result)) {
       $number = $row['number'];
       $pokedex_name = $row["pokedex_name"];
       $category = $row["category"];
	     $type1 = $row['type1'];
       $type2 = $row["type2"];
       }
   }
   ?>
<form action="updateinfo.php" method="POST">
<br>
<br>
<label>ID</label> <input type="text" class="box" value="<?php echo $number;?>" name="number"><br />
<br>
<label>Name</label> <input type="text" class="box" value="<?php echo $pokedex_name;?>" name="pokedex_name"><br />
<br>
<label>Category</label>  <input type="text" class="box" value="<?php echo $category;?>" name="category"><br />
<br>
<label>Type1</label>  <input type="text" class="box" value="<?php echo $type1;?>" name="type1"><br />
<br>
<label>Type2</label>  <input type="text" class="box" value="<?php echo $type2;?>" name="type2"><br />
<br>
<input type="submit" class="button">
</form>