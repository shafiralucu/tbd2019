<?php
start_session();
include("koneksi.php");


if(isset($_POST['submit']))
{
	$user_email=$_POST['email'];
  $user_password=$_POST['pswd'];
  $_SESSION['email'] = $user_email;
	
	
	$query= "SELECT email, password FROM dokter WHERE email='$user_email' AND password='$user_password'";
	
	$res = $conn->query($query);
	if(mysqli_num_rows($res))
	{
		//echo "<script>window.open('halamanUtamaDokter.php','_self')</script>";
    $_SESSION['email'] = $user_email;
		echo "<script>alert('Login Success');
		document.location.href='homeDokter.php'</script>\n";
		
	}
	else
	{	
		echo "<script>alert('Wrong E-mail or Password')</script>";
	}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login - Diagnosis Sederhana</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

   <style>
       @font-face {
           font-family: font1;
           src: url("Asap-Medium.otf");
       }

       @font-face {
           font-family: font2;
           src: url("Asap-Regular.otf");
       }

       body {
           background-color: #a2c4c9;
       }
   
       h2 {
           font-family: font1;
           float: right;
           font-size: 70px;
           margin-top: 80px;
           margin-right: 150px;
           margin-left: 20px;
       }

       #login {
           font-family: font1;
           background-color: #76a5af;
           padding-bottom: 30px;
           padding-top: 30px;
           padding-left: 30px;
           padding-bottom: 30px;
           border-radius: 20px;
       }
   </style>

</head>
<body>

<div class="container w3-display-middle" id="login">
  <img src="cardiogram.png">
  <h2>Diagnosis Sederhana</h2>
  <form action="loginDokter.php" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary" name="submit">Submit</button>
  </form>
</div>


</body>
</html>



