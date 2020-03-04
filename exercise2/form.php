<?php
session_start();
include 'config.php';
?>
<html>

<head>
	<title>PHP File Edit</title>
	
</head>
<body bgcolor="#999999">



<?php

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM alola";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // output data of each row
        echo "<table><th>Pokedex_number</th><th>pokedex_name</th><th>Category</th><th>Type</th>";
         while($row = mysqli_fetch_assoc($result)) {
       echo "<tr><td> " . $row["number"] . "</td><td> " . $row["pokedex_name"] . "</td>
			 <td> " . $row["category"] .       "</td><td>" . $row["type1"] . "</td> <td>" . $row["type2"] . "</td>


       <td><a href='editinfo.php?id=".$row["sort"]."' ><p>Edit</p></a>


       </td></tr>";

         }
        echo "</table>";

    } else {
        echo "0 results";
    }

    mysqli_close($conn);
?>



</body>
</html>
