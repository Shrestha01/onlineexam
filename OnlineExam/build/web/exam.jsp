<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Dashboard</title>
	
	<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style1.css">
	<link rel="stylesheet" href="css/additional.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
	
	<style>
		body{
			text-align: left;
		}
		.dropdown .btn{
			margin: 10px;
			background-image: url(image/bg.jpg);
			color: royalblue;
		}
		.inner-bg {
			color: #FFF;
    		padding: 100px 250px;
		}
		table{
			width: 100%;
		}
		.qna .btn{
			float: right;
			color:royalblue;
			background-image: url(image/bg.jpg);
		}
		.qna input{
			background-image: url(image/bg.jpg);
		}
	</style>
</head>
<body>
	<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav">
						<li><a class="fa fa-home" href="#"></a></li>
					</ul>
					<div class="dropdown" style="float: right;">
						<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Username</button>
						<div class="dropdown-menu">
						  <a class="dropdown-item" href="#">My Profile</a>
						  <div class="dropdown-divider"></div>
						  <a class="dropdown-item" href="#">Logout</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	
	<div class="top-content">
    	<div class="inner-bg">
        	<div class="qna">
           		<h3>Attempt all the questions</h3>
           		<form>
					<table>
						<tr>
							<th><h4>What is The Question Number 1 ???</h4></th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="ans" value="ans_1">&nbsp;&nbsp;Answer Number 1<br><br>
								<input type="radio" name="ans" value="ans_2">&nbsp;&nbsp;Answer Number 2<br><br>
								<input type="radio" name="ans" value="ans_3">&nbsp;&nbsp;Answer Number 3<br><br>
								<input type="radio" name="ans" value="ans_4">&nbsp;&nbsp;Answer Number 4<br><hr>
							</td>
						</tr>
						
						<tr>
							<th><h4>What is The Question Number 2 ???</h4></th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="ans" value="ans_1">&nbsp;&nbsp;Answer Number 1<br><br>
								<input type="radio" name="ans" value="ans_2">&nbsp;&nbsp;Answer Number 2<br><br>
								<input type="radio" name="ans" value="ans_3">&nbsp;&nbsp;Answer Number 3<br><br>
								<input type="radio" name="ans" value="ans_4">&nbsp;&nbsp;Answer Number 4<br><hr>
							</td>
						</tr>
						
						<tr>
							<th><h4>What is The Question Number 3 ???</h4></th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="ans" value="ans_1">&nbsp;&nbsp;Answer Number 1<br><br>
								<input type="radio" name="ans" value="ans_2">&nbsp;&nbsp;Answer Number 2<br><br>
								<input type="radio" name="ans" value="ans_3">&nbsp;&nbsp;Answer Number 3<br><br>
								<input type="radio" name="ans" value="ans_4">&nbsp;&nbsp;Answer Number 4<br><hr>
							</td>
						</tr>
					</table>
					<button class="btn btn-primary"><input type="submit" name="submit" value="Finish Exam"></button>
           		</form>
           	</div>
        </div>  
    </div>
        
</body>
</html>
