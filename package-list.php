<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>SafarNama  | Package List</title>
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
<!--- banner ---->
<div class="banner-3">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> SafarNama- Package List</h1>
	</div>
</div>
<!--- /banner ---->
<!--- rooms ---->
<div class="rooms">
	<div class="container">
		
		<div class="room-bottom">
			<div class="holiday">
			<h3>Package List</h3>
</div>
					
<?php $sql = "SELECT * from tbltourpackages";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
					<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
					<div class="package"><h4><?php echo htmlentities($result->PackageName);?></h4></div>
					<h6>Package Type : <?php echo htmlentities($result->PackageType);?></h6>
					<p><b>Package Location :</b> <?php echo htmlentities($result->PackageLocation);?></p>
					<p><b>Features</b> <?php echo htmlentities($result->PackageFetures);?></p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5> PKR <?php echo htmlentities($result->PackagePrice);?></h5>
					<div class="button"><a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Details</a></div>
				</div>
				<div class="clearfix"></div>
			</div>

<?php }} ?>
			
		
		
		</div>
	</div>
</div>
<!--- /rooms ---->

<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>			
<!-- //write us -->
</body>
</html>