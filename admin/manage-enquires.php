<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{ 
	// code for cancel
if(isset($_REQUEST['eid']))
	{
$eid=intval($_GET['eid']);
$status=1;

$sql = "UPDATE tblenquiry SET Status=:status WHERE  id=:eid";
$query = $dbh->prepare($sql);
$query -> bindParam(':status',$status, PDO::PARAM_STR);
$query-> bindParam(':eid',$eid, PDO::PARAM_STR);
$query -> execute();

$msg="FAQ's  successfully read";
}





	?>
<!DOCTYPE HTML>
<html>
<head>
<title>SafarNama | Admin manage Bookings</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
  <style>
	/* Tourist theme styles */
	body {
            background-image: url('https://th.bing.com/th/id/OIP.lJuD5PsO7hAZM5ApYk-YpQHaEJ?w=319&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7');
            /* Specify the URL of your image */
            background-size: cover;
            /* Cover the entire background */
            font-family: 'Montserrat', sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        .sin-w3-agile {
            background: rgba(255, 255, 255, 0.6);
            /* Reduced opacity */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
            /* Smooth transition on hover */
        }

        .sin-w3-agile:hover {
            background: rgba(168, 228, 160, 0.9);
            /* Lighten on hover */
            border: #333 2px solid;
            box-shadow: 0px 0px 10px 0px rgba(168, 228, 160, 0.1);
        }

        h2 {
            color: #006600;
            font-size: 38px;
            text-align: center;
            margin-bottom: 30px;
        }

        .username,
        .password-agileits {
            margin-bottom: 25px;
        }

        .username span,
        .password-agileits span {
            font-size: 18px;
            color: #006600;
        }

        .name,
        .password {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .name:hover,
        .password:hover {
            background-color: rgba(0, 102, 0, 0.7);
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
            transition: background-color 0.3s ease, color 0.3s ease, border 0.3s ease;
            /* Smooth transitions */
        }

        .login:hover {
            background-color: #a8e4a0;
            /* Darken on hover */
            color: #006600;
            /* Change text color on hover */
            border: #006600 3px solid;
            /* Add border on hover */
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

        .four-grids {
            margin-top: 20px;
        }

        .four-grid {
            margin-bottom: 20px;
        }

        /* Additional styling for four-grids */
        .four-text h3,
        .four-text h4 {
            color: #333; /* Darker text color */
        }
		  /* Sidebar menu styles */
	  .sidebar-menu {
        background-color: rgba(0,102,0, 0.7); /* Sidebar background color */
        /* color: #fff; Text color */
		border-right: #a8e4a0 2px solid;
    }

    .sidebar-menu .logo1 {
        padding: 15px;
        text-align: center;
		background-color: #006600;
    }

    .sidebar-menu .sidebar-icon {
        color: #fff;
        font-size: 24px;
		background-color: #006600;
		border: none;
    }
	.sidebar-menu .sidebar-icon:hover {
        color: #006600;
        font-size: 24px;
		background-color: #a8e4a0;
    }

    .sidebar-menu .menu {
        padding: 15px;
		/* background-color: #006600; */
    }

    .sidebar-menu .menu .nav-item {
        margin-bottom: 10px;
		/* background-color: #006600; */
    }

    .sidebar-menu .menu .nav-link {
        /* color: #fff; */
		color: #006600;
		background-color: #a8e4a0;
    }
	.nav .flex-column{
		background-color: #006600;
	}
    .sidebar-menu .menu .nav-link:hover {
        color: #a8e4a0; /* Lighten text color on hover */
		background-color: #a8e4a0;
    }

    .sidebar-menu .menu .nav-link i {
        margin-right: 10px;
    }

    .sidebar-menu .menu .nav-link .fa-angle-right {
        float: right;
		background-color: #006600;
    }

    .sidebar-menu .menu .nav-link .nav-item {
        padding-left: 20px; /* Indent sub-menu items */
		background-color: #006600;
    }
	   /* Header styles */
	   .header-main {
        background-color: #fff; /* Header background color */
        color: #333; /* Text color */
        padding: 10px 20px; /* Adjust padding as needed */
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

	.header-main .logo-w3-agile {
		background-color: #006600;
	}
    .header-main .logo-w3-agile h1 a {
        color: #fff; /* Logo text color */
        text-decoration: none;
    }

    .header-main .profile_details {
		margin-left: 0;
		color: #fff;
		background-color: #006600;
        position: relative;
    }

    .header-main .profile_img {
		color: #fff;
        display: flex;
        align-items: center;
        cursor: pointer;
    }

    .header-main .profile_img .prfil-img img {
		color: #fff;
        width: 40px; /* Adjust profile image size */
        height: 40px;
        border-radius: 50%;
        margin-right: 10px;
    }

    .header-main .user-name p,
    .header-main .user-name span {
        margin: 0;
    }

    .header-main .dropdown-menu {
        min-width: 50px; /* Adjust dropdown menu width */
    }

    .header-main .dropdown-menu li a {
        color: #333; /* Dropdown menu text color */
        text-decoration: none;
        padding: 10px;
        display: block;
    }

    .header-main .dropdown-menu li a:hover {
        background-color: #a8e4a0; /* Background color on hover */
    }
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head> 
<body>
   <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<?php include('includes/header.php');?>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a><i class="fa fa-angle-right"></i>Manage Enquiries</li>
            </ol>
<div class="agile-grids">	
				<!-- tables -->
				<?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  <h2>Manage Enquiries</h2>
					    <table id="table">
						<thead>
						  <tr>
						  <th>Ticket id</th>
							<th>Name</th>
							<th>Mobile No./ Email</th>
							
							<th>Subject </th>
							<th>Description </th>
							<th>Posting date </th>
							<th>Action </th>
							
						  </tr>
						</thead>
						<tbody>
<?php $sql = "SELECT * from tblenquiry";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

if($query->rowCount() > 0)
{
foreach($results as $result)
{				?>		
						  <tr>
							<td width="120">#TCKT-<?php echo htmlentities($result->id);?></td>
							<td width="50"><?php echo htmlentities($result->FullName);?></td>
								<td width="50"><?php echo htmlentities($result->MobileNumber);?> /<br />
								<?php echo $result->EmailId;?></td>
							
						
							<td width="200"><?php echo htmlentities($result->Subject);?></a></td>
							<td width="400"><?php echo htmlentities($result->Description);?></td>
							
								<td width="50"><?php echo htmlentities($result->PostingDate);?></td>
								<?php if($result->Status==1)
{
	?><td>Read</td>
<?php } else {?>

<td><a href="manage-enquires.php?eid=<?php echo htmlentities($result->id);?>" onclick="return confirm('Do you really want to read')" >Pending</a>
</td>
<?php } ?>
</tr>
						 <?php } }?>
						</tbody>
					  </table>
					</div>
				  </table>

				
			</div>
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">

</div>
<!--inner block end here-->
<!--copy rights start here-->
<?php include('includes/footer.php');?>
<!--COPY rights end here-->
</div>
</div>
  <!--//content-inner-->
		<!--/sidebar-menu-->
						<?php include('includes/sidebarmenu.php');?>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   

</body>
</html>
<?php } ?>