<?php
session_start();
include('includes/config.php');
if(isset($_POST['login']))
{
$uname=$_POST['username'];
$password=md5($_POST['password']);
$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['alogin']=$_POST['username'];
echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
} else{
	
	echo "<script>alert('Invalid Details');</script>";

}

}

?>

<!DOCTYPE HTML>
<html>
<head>
<title>SafarNama | Admin Sign in</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<!-- <link href="css/style.css" rel='stylesheet' type='text/css' /> -->
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery-ui.css"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->

<style>
        /* Tourist theme styles */
        body {
            background-image: url('https://th.bing.com/th/id/OIP.lJuD5PsO7hAZM5ApYk-YpQHaEJ?w=319&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7'); /* Specify the URL of your image */
            background-size: cover; /* Cover the entire background */
            font-family: 'Montserrat', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        .sin-w3-agile {
            background: rgba(255, 255, 255, 0.6); /* Reduced opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .sin-w3-agile:hover {
            background: rgba(168, 228 , 160, 0.9); /* Lighten on hover */
			border: #333 2px solid;
			box-shadow: 0px 0px 10px 0px rgba(168,228,160,0.1);
        }

        h2 {
            color: #006600;
            font-size: 38px;
            text-align: center;
            margin-bottom: 30px;
        }

        .username, .password-agileits {
            margin-bottom: 25px;
        }

        .username span, .password-agileits span {
            font-size: 18px;
            color: #006600;
        }

        .name, .password {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
		.name:hover, .password:hover{
			background-color: rgba(0,102,0, 0.7);
			color: #fff;
		}

        .login-w3 {
            text-align: center;
        }

        .login {
            background-color: #006600;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, border 0.3s ease; /* Smooth transitions */
        }

        .login:hover {
            background-color: #a8e4a0; /* Darken on hover */
            color: #006600; /* Change text color on hover */
            border: #006600 3px solid; /* Add border on hover */
        }

        .back {
            margin-top: 20px;
            text-align: center;
        }

        .back a {
            color: #006600;
            text-decoration: none;
            font-size: 16px;
        }

        .back a:hover {
            text-decoration: underline;
        }
    </style>
</head> 
<body>
	<div class="main-wthree">
	<div class="container">
	<div class="sin-w3-agile">
		<h2>Sign In</h2>
		<form  method="post">
			<div class="username">
				<span class="username">Username:</span>
				<input type="text" name="username" class="name" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
			<div class="password-agileits">
				<span class="username">Password:</span>
				<input type="password" name="password" class="password" placeholder="" required="">
				<div class="clearfix"></div>
			</div>
			
			<div class="login-w3">
					<input type="submit" class="login" name="login" value="Sign In">
			</div>
			<div class="clearfix"></div>
		</form>
				<div class="back">
					<a href="../index.php">Back to home</a>
				</div>
				
	</div>
	</div>
	</div>
</body>
</html>