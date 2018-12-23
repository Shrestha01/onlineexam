<?php
	if(!isset($_COOKIE['user'])){
		echo "<script>alert('Please Login To Continue');</script>";
		echo "<script>window.open('adminindex.php','_self');</script>";
	}
	else{
		$un=$_COOKIE['user'];
	}
?>

<html>
<head>
	<title>On-Er-Examination | Admin LogIn</title>
<!--CSS Starts-->
	<link rel="stylesheet" href="../css/style.css" type="text/css" />
	<link rel="shortcut icon" href="../images/title-icon.png"/>
	
	<style>
		h2{
			font-size: 2.5em;
			color: aliceblue;
			margin-bottom:30px;
			border-bottom:1px solid #e5e5e5;
			padding-bottom:10px;
		}
		.navigation ul li.menu {
			position: relative;
		}
		.navigation ul li.menu ul {
			font-size: 0.5em;
			display: block;
			left: -99999px;
			list-style: none;
			margin: 0;
			padding: 0;
			position: absolute;
			top: 40px;
			width: 155px;
			z-index: 50;
		}
		.navigation ul li.menu:hover ul.primary {
			left: -15px;
			border-radius: 10px;
		}
		.body a{
			width: 200px;
			height: auto;
			padding:5px 15px;
			cursor:pointer;
			color:#fff;
			border:none;
			border-radius:5px;
			background-color:#2ECC71;
			border-bottom:4px solid #27AE60;
		}
		.body a:hover{
			border-bottom:4px solid #2ECC71;
			background-color: #27AE60;
			color: #ffffff;
			cursor: pointer;
	</style>
<!--CSS Ends-->
</head>
<body>
<div class="body_div">
	<!--header start-->
		<div class="header">
			<div class="logoWidget">
				<h1><a href="adminlogin.php"/>On-Er-Examination</a></h1>
			</div>
			<div class="navigation">
				<ul>
					<li class="first selected">
						<a href="adminlogin.php"><img class="homeicon" src="../images/home-icon-white_338306.png">Home</a>
					</li>
					<li class="menu">
						<a><img class="homeicon" src="../images/Abstract user icon.png"><?php echo $un; ?></a>
						<ul class="primary">
							<li>
								<a href="adminlogout.php"><img class="homeicon" src="../images/Login-512.png">Log Out</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	<!--header end-->

	<!--content start-->
		<div class="contents">
			<div class="body">
				<h2>Register User Details</h2>
				<table border="2" style="border-color: #FFF; color: #FFF; border-collapse:collapse; text-align:center;" width="100%" >
				<tr>
					<th colspan="8"><h2 style='margin-bottom: 0px; border-bottom: none;'>Registered Users</h2></th>
				</tr>
				<tr>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Name</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Username</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Password</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Email</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Address</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>University</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>College</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Delete</h3></th>
				</tr>
				<?php
					$con=mysqli_connect("localhost","root","","project");
					$sel="select * from user";
					$que=mysqli_query($con,$sel);
					while($row=mysqli_fetch_array($que)){
						$u_id=$row['user_id'];
						$u_name=$row['Name'];
						$u_pass=$row['pass'];
						$un_name=$row['username'];
						$u_add=$row['address'];
						$u_uni=$row['university'];
						$u_coll=$row['college'];
						$u_email=$row['email'];
						echo"
					    <tr>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_name</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$un_name</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_pass</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_email</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_add</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_uni</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_coll</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'><a href='user_delete.php?uid=$u_id' onclick='return confirm(\"Are you sure you want to delete?\")'>Delete</a></h3></td>
					   </tr>
						";
					}
				?>
				</table>
				<h2>Admin User Details</h2>
				<table border="2" style="border-color: #FFF; color: #FFF; border-collapse:collapse; text-align:center;" width="100%" >
				<tr>
					<th colspan="8"><h2 style='margin-bottom: 0px; border-bottom: none;'>Admin Users</h2></th>
				</tr>
				<tr>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Name</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Username</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Password</h3></th>
					<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Email</h3></th>
					<!--<th><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>Delete</h3></th>-->
				</tr>
				<?php
					$con=mysqli_connect("localhost","root","","project");
					$sel="select * from mst_admin";
					$que=mysqli_query($con,$sel);
					while($row=mysqli_fetch_array($que)){
						$u_id=$row['id'];
						$u_name=$row['Name'];
						$u_pass=$row['pass'];
						$un_name=$row['loginid'];
						$u_email=$row['Email'];
						echo"
					    <tr>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_name</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$un_name</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_pass</h3></td>
						   <td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'>$u_email</h3></td>
						   <!--<td><h3 style='margin: 10px; padding-bottom: 0px; border-bottom: none;'><a href='user_delete.php?uid=$u_id' onclick='return confirm(\"Are you sure you want to delete?\")'>Delete</a></h3></td>-->
					   </tr>
						";
					}
				?>
				</table>
			</div>
		</div>
	<!--content end-->

	<!--footer start-->
		<div class="footer">
			<span class="footnote">&copy; Copyright &copy; 2016. All rights reserved</span>
		</div>
	<!--footer end-->
</div>
</body>
</html>