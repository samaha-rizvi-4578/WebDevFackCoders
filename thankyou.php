<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>SafarNama | Confirmation </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="icon" type="image/png" href="logo.png">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
	<style> 
	 /* Updated CSS for banner and animation */
	 .banner {
        background-color: rgba(0, 0, 0, 0.5); /* Change opacity here */
    }
    .banner h1 {
        color: #fff; /* Change text color */
    }
    .rupes {
        background-color: rgba(255, 255, 255, 0.8); /* Change opacity here */
    }

    /* Styling for the header */
    .top-header {
        background-color: #006400; /* Pakistani green color */
        color: #fff; /* White text color */
    }
    .header {
        background-color: #006400; /* Pakistani green color */
    }
    .header .logo a {
        color: #fff; /* White text color */
    }
    .header .logo a:hover {
        color: #00FF00; /* Light green on hover */
        text-decoration: none; /* Remove underline on hover */
    }

    /* Styling for the navbar */
    .nav {
        background-color: #006400; /* Pakistani green color */
        border: #fff 2px solid; /* Border color */
    }
    li > a {
        color: #fff; /* White text color */
    }
    li > a:hover,
    li > a:focus {
        color: #00FF00; /* Light green on hover */
        background-color: transparent; /* Transparent background on hover */
    }
    .navbar-toggle .icon-bar {
        background-color: #fff; /* White color for the toggle icon bars */
    }

	.holiday h3{
		color: #006400;
	}
	.package h4{
		color: #006400;
	}
	.button a{
		background-color: #006400;
		color: #fff;
	}
    /* Styling for submit buttons */
    .button a:hover {
        background-color: whitesmoke; /* Light green on hover */
		color: #006400;
		border: #006400 1px solid;
    }
</style>
<!--//end-animate-->
</head>
<body>
<?php include('includes/header.php');?>
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> SafarNama</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- contact ---->
<div class="contact">
	<div class="container">
	<h3> Confirmation</h3>
		<div class="col-md-10 contact-left">
			<div class="con-top animated wow fadeInUp animated" data-wow-duration="1200ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp;">
	

			<div class="package">
              <h4>  <?php echo htmlentities($_SESSION['msg']);?></h4>
</div>
			</div>
		
			<div class="clearfix"></div>
	</div>
</div>
<!--- /contact ---->
<?php include('includes/footer.php');?>
<!-- sign -->
<?php include('includes/signup.php');?>	
<!-- signin -->
<?php include('includes/signin.php');?>	
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>	
<!-- //write us -->
</body>
</html>