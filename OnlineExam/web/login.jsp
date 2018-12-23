<html>
<head>
	<title>On-Er-Examination | LogIn</title>
<!--CSS Starts-->
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="shortcut icon" href="images/title-icon.png"/>
	
	<style>
		h2{
			font-size: 2.5em;
			color: aliceblue;
			margin-bottom:30px;
			border-bottom:1px solid #e5e5e5;
			padding-bottom:10px;
		}
		input[type="text"],[type="password"]{
			height:25px;
			width:200px;
			font-size:15px;
			margin-bottom:10px;
			background-color:#fff;
		}
		input[type="submit"]:hover{
			border-bottom:4px solid #2ECC71;
			background-color: #27AE60;
			color: #ffffff;
			cursor: pointer;
		}
		.btn_login{
			width: 200px;
			padding:10px 25px;
			cursor:pointer;
			color:#fff;
			border:none;
			border-radius:5px;
			background-color:#2ECC71;
			border-bottom:4px solid #27AE60;
			margin-bottom:20px;
		}
	</style>
<!--CSS Ends-->
</head>
<body>
<div class="body_div">
	<!--header start-->
		<div class="header">
			<div class="logoWidget">
				<h1><a href="index.php"/>On-Er-Examination</a></h1>
			</div>
			<div class="navigation">
				<ul>
					<li class="first selected">
						<a href="index.php"><img class="homeicon" src="images/home-icon-white_338306.png">Home</a>
					</li>
				</ul>
			</div>
		</div>
	<!--header end-->

	<!--content start-->
		<div class="contents">
			<div class="body">
				<h2>Welcome To Online Examination</h2>
				<center>
					<div class="form fadeIn animated">
						<h2>Log In</h2>
						<img src="images/boy-512.png" alt="img">
						<form action="LoginSurvlet" method="POST">
							<input type="text" name="login_id" placeholder="Username" id="loginid2"></br>
							<input type="password" name="login_pass" placeholder="Password" id="pass2"></br></br>
							<input type="submit" name="submit" value="Sign in to Account" class="btn_login"></br>
							<!--<a href="reset.php">Forgot Password ???</a>-->
						</form>
					</div>
				</center>
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

<!--<?php
	if(isset($_POST['submit'])){
		$con=mysqli_connect("localhost","root","","project");
		$un=$_POST['loginid'];
		$pass=$_POST['pass'];
		
		$sql="select * from user where username='$un' and pass='$pass'";
		$que=mysqli_query($con,$sql);
		if(mysqli_num_rows($que)>0){
			setcookie("user",$un);
			echo "<script>window.open('user.php','_self');</script>";
		}
		else{
			echo "<script>alert('Invalid Username/password');</script>";
			echo "<script>window.open('login.php','_self');</script>";
		}
	}
?>-->

