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
    		padding: 100px 250px 430px;
		}
		.sub-info .btn{
			float: right;
			color: royalblue;
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
						<li><a class="scroll-link" href="#top-content">Top</a></li>
						<li><a class="scroll-link" href="#footer">Feedback</a></li>
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
           	<div class="sub-img">
           		<img src="image/no_image.png">
           	</div>
           	<div class="sub-info">
            	<h1>Programming in C</h1>
            	<p>
            		C is a high-level and general-purpose programming language that is ideal for developing firmware or portable applications. Originally intended for writing system software, C was developed by Dennis Ritchie in the early 1970s.
            	</p>
				<button class="btn btn-primary"><a href="exam.jsp">Take Exam</a></button>
           	</div>
                
        </div>  
    </div>
	
	<!-- Footer -->
        <footer class="footer-container">
	        <div class="container">
	        	<div class="row">
	        		
                    <div class="col-sm-6 footer-left">
                    	<h3>Feedback</h3>
                    	<div class="contact-form">
                    		<form role="form" action="assets/contact.php" method="post">
		                    	<div class="form-group">
		                    		<label class="sr-only" for="contact-email">Email</label>
		                        	<input type="text" name="email" placeholder="Email..." class="contact-email form-control" id="contact-email">
		                        </div>
		                        <div class="form-group">
		                        	<label class="sr-only" for="contact-subject">Subject</label>
		                        	<input type="text" name="subject" placeholder="Subject..." class="contact-subject form-control" id="contact-subject">
		                        </div>
		                        <div class="form-group">
		                        	<label class="sr-only" for="contact-message">Message</label>
		                        	<textarea name="message" placeholder="Message..." class="contact-message form-control" id="contact-message"></textarea>
		                        </div>
		                        <button type="submit" class="btn">Send message</button>
		                    </form>
                    	</div>
                    </div>
                    <!--
                    <div class="col-sm-5 col-sm-offset-1 footer-right">
                    	<h3>Follow us</h3>
                    	<div class="footer-social">
                    		<a href="#"><i class="fa fa-facebook"></i></a>
	                    	<a href="#"><i class="fa fa-dribbble"></i></a>
	                    	<a href="#"><i class="fa fa-twitter"></i></a>
	                    	<a href="#"><i class="fa fa-instagram"></i></a>
	                    	<a href="#"><i class="fa fa-pinterest"></i></a>
                    	</div>
                    	<div class="footer-copyright">
                    		
                    	</div>
                    </div>
                    -->
                </div>
	        </div>
	        
	        <div class="container-fluid">
	        	<div class="row">
                	<div class="col-sm-12 footer-bottom">
                		<a class="scroll-link" href="#top-content"><i class="fa fa-chevron-up"></i></a>
                	</div>
                </div>
	        </div>
	   </footer>
        
        <!-- Javascript -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/retina-1.1.0.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/scripts.js"></script>
        
</body>
</html>
