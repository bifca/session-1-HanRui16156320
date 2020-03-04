<?php
include("config.php");
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST")
{
// username and password sent from form

$myusername=mysqli_real_escape_string($conn,$_POST['username']);
$mypassword=mysqli_real_escape_string($conn,$_POST['password']);


$sql5="SELECT id FROM admin WHERE username='$myusername' and password='$mypassword'";
$result=mysqli_query($conn,$sql5);
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
$count=mysqli_num_rows($result);


// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1)
{
//session_register("myusername");
$_SESSION['login_user']=$myusername;

header("location: form.php");
}
else
{
$error="Your Login Name or Password is invalid";
}
}
?>

<!DOCTYPE HTML>
<html>
<head>

<meta charset="utf-8">
<title>Login Page</title>

</head>
<div class="overlay"></div>
<body >


<div class="intro"><h1>Login the website</h1></div>
<a href="index.php" class="register">Back to home page</a>
<div align="center" class="login">
<div style="width:300px; border: solid #555555; display :inline-block; background-color:#FFF; border-radius: 30px;" >
<div style="background-color:#555555; padding:3px; color:#fff; font-size: 25px; text-align: center; border-top-left-radius: 26px; border-top-right-radius: 26px; ">
<b>Login</b></div>


<div style="margin:35px">

<form action="" method="post">
<label>UserName</label><br /><input type="text" name="username" class="box" style="padding-top: 5px; padding-bottom: 5px;"/><br /><br />
<label>Password</label><br /><input type="password" name="password" class="box" style="padding-top: 5px; padding-bottom: 5px;" /><br/><br />

<input type="submit" value="Submit" class="button"/><br/>
<a href="register.php" class="register">Register</a>

</form>
<div style="font-weight:bold; margin-bottom:10px">Demo Login Details -> Username : <a href="#">test</a>  Password : <a href="#">test</a></div>
<?php if(!empty($error)) { ?>
<div style="font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
<?php } ?>
</div>
</div>
</div>


</body>
</html>
