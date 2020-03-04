<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  	<link rel="stylesheet" href="css/style.css" type="text/css" > 
    <meta charset="utf-8">
    <title>Pokédex Gen7</title>
  </head>
  <div class="overlay"></div>
  <body bgcolor="#EEEEEE">
  	<div class="wrapper">


	</div>

	<div class="menu">
		<div class="item">
			<a href="form.php">Edit</a>
		</div>
	</div>

	<div class="humber" toggle="0" id="humber">
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
	</div>




</div>
<?php
   require 'var.php';
   if (!$conn) {
       die("Connection failed: " . mysqli_connect_error());
   }

   $sql = "SELECT number, pokedex_name, icons, category, type1, type2, abilities FROM alola WHERE sort = $id";
   $result = mysqli_query($conn, $sql);
   $pokeImg = mysqli_query($conn, $sql);
  ?>

<div class="dexDiv">
	
		<?php
   if (mysqli_num_rows($pokeImg) > 0) {
        while($row = mysqli_fetch_assoc($pokeImg)) {
      		echo '<img src="http://localhost/Alola/'. $row["icons"].'" class="pokeImg">';
        }
   }
   ?>
</div>

  <?php
   if (mysqli_num_rows($result) > 0) {
   	echo '<div class="textDiv">
   	<h1>Pokédex - Alola Area</h1>';
        while($row = mysqli_fetch_assoc($result)) {
       echo
       "<span>".
       	"<tr><td> ". $row["number"]. "<br />" .
       	"</td><td> " . $row["pokedex_name"] . "<br />" .
       	"</td><td> ".$row["category"] . "<br />" .
        "</td><td> " . $row["type1"] . "<br />" .
        "</td><td> " . $row["type2"] . "<br />" .
        "</td><td> " .$row["abilities"] ."</td></tr>".
				"</span>";
        }
				echo "<div class='btnDiv'><div class='prev'><a href='".$prevURL."'><p>Prev</p></a></div>";
				echo "<div class='next'><a href='".$nextURL."'><p>Next</p></a></div></div>";
		echo '</div>';
   } else {
       echo "0 results";
   }

   
?>
</div>

   </body>
</html>
