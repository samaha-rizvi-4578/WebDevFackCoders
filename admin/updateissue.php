<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
  { 
header('location:index.php');
}
else{ 
  $iid=intval($_GET['iid']);
if(isset($_POST['submit2']))
  {
$remark=$_POST['remark'];

$sql = "UPDATE tblissues SET AdminRemark=:remark WHERE  id=:iid";
$query = $dbh->prepare($sql);
$query -> bindParam(':remark',$remark, PDO::PARAM_STR);
$query-> bindParam(':iid',$iid, PDO::PARAM_STR);
$query -> execute();

$msg="Remark  successfully Updated";
}



 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Update Compliant</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="anuj.css" rel="stylesheet" type="text/css">
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

<div style="margin-left:50px;">
 <form name="updateticket" id="updateticket" method="post"> 
<table width="100%" border="0" cellspacing="0" cellpadding="0">

    <tr height="50">
      <td colspan="2" class="fontkink2" style="padding-left:0px;"><div class="fontpink2"> <b>Update Remark !</b></div></td>
      
    </tr>


   

      <tr>
      <td colspan="2" ">  <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
        else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?></td>
    
    </tr>

            <tbody>
<?php 
$sql = "SELECT * from tblissues where id=:iid";
$query = $dbh -> prepare($sql);
$query-> bindParam(':iid',$iid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

if($query->rowCount() > 0)
{
foreach($results as $result)
{ 

  if($result->AdminRemark=="")
  {
?>

     <tr style=''>
      <td class="fontkink1" >Remark:</td>
      <td class="fontkink" align="justify" ><span class="fontkink">
        <textarea cols="50" rows="7" name="remark" required="required" ></textarea>
        </span></td>
    </tr>
    <tr>
      <td class="fontkink1">&nbsp;</td>
      <td  >&nbsp;</td>
    </tr>
    <tr>
      <td class="fontkink">       </td>
      <td  class="fontkink"> <input type="submit" name="submit2"  value="update"   size="40" style="cursor: pointer;" /></td>
    </tr> 
    <?php } else { ?>
     <tr>
      <td class="fontkink1" ><b>Remark:</b></td>
      <td class="fontkink" align="justify" ><?php echo htmlentities($result->AdminRemark);?></td>
    </tr>
    <tr>
      <td class="fontkink1" ><b>Remark Date:</b></td>
      <td class="fontkink" align="justify" ><?php echo htmlentities($result->AdminremarkDate);?></td>
    </tr>
    <?php }}}?>
    
 

 
</table>
 </form>
</div>

</body>
</html>
<?php } ?>

     