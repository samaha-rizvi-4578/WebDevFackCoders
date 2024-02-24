<?php
session_start();
include('includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
	header('location:index.php');
} else {
?>
<!DOCTYPE HTML>
<html>

<head>
    <title>SafarNama | Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/morris.css" type="text/css" />
    <!-- Graph CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- //jQuery -->
    <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- lined-icons -->
    <link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
    <!-- //lined-icons -->
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
		</style>
</head>

<body>
    <div class="page-container">
        <!--/content-inner-->
        <div class="left-content">
            <div class="mother-grid-inner">
                <!--header start here-->
                <?php include('includes/header.php'); ?>
                <!--header end here-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a> <i class="fa fa-angle-right"></i></li>
                </ol>
                <!--four-grids here-->
                <div class="four-grids">
                    <div class="col-md-3 four-grid">
                        <div class="sin-w3-agile">
                            <div class="icon">
                                <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                            </div>
                            <div class="four-text">
                                <h3>User</h3>
                                <?php $sql = "SELECT id from tblusers";
                                $query = $dbh->prepare($sql);
                                $query->execute();
                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                $cnt = $query->rowCount();
                                ?> <h4> <?php echo htmlentities($cnt); ?> </h4>
                            </div>
                        </div>
                    </div>
                    <!-- Add more four-grid items -->
                    <div class="col-md-3 four-grid">
                        <div class="sin-w3-agile">
                            <div class="icon">
                                <i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
                            </div>
                            <div class="four-text">
                                <h3>Bookings</h3>
                                <?php $sql1 = "SELECT BookingId from tblbooking";
                                $query1 = $dbh->prepare($sql1);
                                $query1->execute();
                                $results1 = $query1->fetchAll(PDO::FETCH_OBJ);
                                $cnt1 = $query1->rowCount();
                                ?>
                                <h4><?php echo htmlentities($cnt1); ?></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 four-grid">
                        <div class="sin-w3-agile">
                            <div class="icon">
                                <i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
                            </div>
                            <div class="four-text">
                                <h3>FAQ's</h3>
                                <?php $sql2 = "SELECT id from tblenquiry";
                                $query2 = $dbh->prepare($sql2);
                                $query2->execute();
                                $results2 = $query2->fetchAll(PDO::FETCH_OBJ);
                                $cnt2 = $query2->rowCount();
                                ?>
                                <h4><?php echo htmlentities($cnt2); ?></h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 four-grid">
                        <div class="sin-w3-agile">
                            <div class="icon">
                                <i class="glyphicon glyphicon-briefcase" aria-hidden="true"></i>
                            </div>
                            <div class="four-text">
                                <h3>Total packages</h3>
                                <?php $sql3 = "SELECT PackageId from tbltourpackages";
                                $query3 = $dbh->prepare($sql3);
                                $query3->execute();
                                $results3 = $query3->fetchAll(PDO::FETCH_OBJ);
                                $cnt3 = $query3->rowCount();
                                ?>
                                <h4><?php echo htmlentities($cnt3); ?></h4>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!--//four-grids here-->
                <div class="four-grids">
                    <!-- Additional four-grid items -->
                    <div class="col-md-3 four-grid">
                        <div class="sin-w3-agile">
                            <div class="icon">
                                <i class="glyphicon glyphicon-folder-open" aria-hidden="true"></i>
                            </div>
                            <div class="four-text">
                                <h3>Issues Raised</h3>
                                <?php $sql5 = "SELECT id from tblissues";
                                $query5 = $dbh->prepare($sql5);
                                $query5->execute();
                                $results5 = $query5->fetchAll(PDO::FETCH_OBJ);
                                $cnt5 = $query5->rowCount();
                                ?>
                                <h4><?php echo htmlentities($cnt5); ?></h4>
                            </div>
                        </div>
                    </div>
                    <!-- Add more four-grid items -->
                    <div class="clearfix"></div>
                </div>
                <!--//four-grids here-->
                <div class="inner-block">

                </div>
                <!--inner block end here-->
                <!--copy rights start here-->
                <?php include('includes/footer.php'); ?>
            </div>
        </div>
        <!--/sidebar-menu-->
        <?php include('includes/sidebarmenu.php'); ?>
        <div class="clearfix"></div>
    </div>
    <script>
        var toggle = true;

        $(".sidebar-icon").click(function() {
            if (toggle) {
                $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                $("#menu span").css({
                    "position": "absolute"
                });
            } else {
                $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                setTimeout(function() {
                    $("#menu span").css({
                        "position": "relative"
                    });
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
    <!-- morris JavaScript -->
    <script src="js/raphael-min.js"></script>
    <script src="js/morris.js"></script>
    <script>
        $(document).ready(function() {
            //BOX BUTTON SHOW AND CLOSE
            jQuery('.small-graph-box').hover(function() {
                jQuery(this).find('.box-button').fadeIn('fast');
            }, function() {
                jQuery(this).find('.box-button').fadeOut('fast');
            });
            jQuery('.small-graph-box .box-close').click(function() {
                jQuery(this).closest('.small-graph-box').fadeOut(200);
                return false;
            });

            //CHARTS
            function gd(year, day, month) {
                return new Date(year, month - 1, day).getTime();
            }

            graphArea2 = Morris.Area({
                element: 'hero-area',
                padding: 10,
                behaveLikeLine: true,
                gridEnabled: false,
                gridLineColor: '#dddddd',
                axes: true,
                resize: true,
                smooth: true,
                pointSize: 0,
                lineWidth: 0,
                fillOpacity: 0.85,
				data: [
				{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
				{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
			],
                lineColors: ['#ff4a43', '#a2d200', '#22beef'],
                xkey: 'period',
                redraw: true,
                ykeys: ['iphone', 'ipad', 'itouch'],
                labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
                pointSize: 2,
                hideHover: 'auto',
                resize: true
            });


        });
    </script>
</body>

</html>



<?php } ?>