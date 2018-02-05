<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="onlineExam.NewClass" %>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home</title>
	
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/form-elements.css">
    <link rel="stylesheet" href="css/media-queries.css">
    <link rel="stylesheet" href="css/additional.css">
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
						<li><a class="scroll-link" href="#services">Course</a></li>
						<li><a class="scroll-link" href="#blog">Ongoing Exam</a></li>
						<li><a class="scroll-link" href="#footer">Feedback</a></li>
					</ul>
                                    <a href="login.jsp" style="float: right; margin: 15px;">Login</a>
				</div>
			</div>
		</nav>
	
	<!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                        	<div class="logo wow fadeInDown">
                        		<a href="#"><img src="image/logo.png"></a>
                        	</div>
                            <h1 class="wow fadeInLeftBig">Welcome to OE Test Examination</h1>
                            <div class="description wow fadeInLeftBig">
                            	<p>
	                            	OE Test Examination is a web application designed for the students both newbie and enrolled. On-Er Test Examination helps students to build-up their knowledge be enrolling in the test exams offered and helps them to learn off the course knowledge and in course knowledge.
                            	</p>
                            </div>
                            <div class="top-big-link wow fadeInUp">
                            	<a class="btn btn-success" href="login.jsp">Take Exam</a>
                            	<a class="btn btn-primary scroll-link" href="#services">Learn more</a>
                            </div>
                        </div>
                    </div>    
                </div>
            </div>  
        </div>
        
	<!-- More services -->
        <div class="services-container section-container">
	        <div class="container">
	        	
	            <div class="row">
	                <div class="col-sm-12 more-services section-description wow fadeIn">
	                    <h2>Course</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
	            <%
                        
                        NewClass db=new NewClass();
                        Connection con=db.getConnection();
                        
                        String sql="select * from courseDetails";
                        
                        Statement stmt=con.createStatement();
                        ResultSet rs=stmt.executeQuery(sql);
                        
                        while(rs.next()){
                            String courseName=rs.getString(2);
                            String courseDescription=rs.getString(3);
                            String courseAdded=rs.getString(4);
                            String courseImage=rs.getString(5);
                            
                            %>
                    
                    
                    
	            
	                <div class="col-sm-6 more-services-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
                                            <div class="more-services-box-icon">
	                			<i class="fa fa-pencil"></i>
                                            </div>
	                		</div>
	                		<div class="col-sm-9">
                                            <h3><%= courseName %></h3>
		                    	<p>
		                    	The ability to convey information to another effectively and efficiently. Business managers with good verbal, non verbal and written communication skills help facilitate the sharing of information between people within a company for its commercial benefit.
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	                
	            
                                            <% 
                                                }
                                            %>
	            
				<div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-warning" href="#">View More</a><br><br>
	            	</div>
	            </div>
	        </div>
        </div>
        
   <!-- Blog -->
        <div class="blog-container section-container">
	        <div class="container">
	        	
	            <div class="row">
	                <div class="col-sm-12 blog section-description wow fadeIn">
	                    <h2>Ongoing Exam</h2>
	                    <div class="divider-1 wow fadeInUp"><span></span></div>
	                </div>
	            </div>
                    
                    
                    <%
                        
                        NewClass db1=new NewClass();
                        Connection con1=db1.getConnection();
                        
                        String sql1="select * from courseDetails";
                        
                        Statement stmt1=con1.createStatement();
                        ResultSet rs1=stmt1.executeQuery(sql);
                        
                        while(rs1.next()){
                            String courseName=rs1.getString(2);
                            String courseDescription=rs1.getString(3);
                            String courseAdded=rs1.getString(4);
                            String courseImage=rs1.getString(5);
                            
                            %>
                            <div class="col-sm-6 blog-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
	                			<div class="blog-box-image">
	                				<img src="<%= courseImage %>" alt="" data-at2x="<%= courseImage %>">
	                			</div>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3><a href="subject.jsp"><%= courseName %></a> <i class="fa fa-angle-right"></i></h3>
	                			<div class="blog-box-date"><i class="fa fa-calendar-o"></i> 17 September 2015</div>
		                    	<p>
		                    		<%=courseDescription %>
		                    	</p>
	                		</div>
	                	</div>
	                </div>
                            
                            <%
                            
                        }

                        
                        %>
                    
                    
                    
                    
                    
	            
<!--	            <div class="row">
	                <div class="col-sm-6 blog-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
	                			<div class="blog-box-image">
	                				<img src="image/physics.png" alt="" data-at2x="image/physics.png">
	                			</div>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3><a href="#">Physics</a> <i class="fa fa-angle-right"></i></h3>
	                			<div class="blog-box-date"><i class="fa fa-calendar-o"></i> 17 September 2015</div>
		                    	<p>
		                    		Physics is the scientific study of forces such as heat, light, sound, pressure, gravity, and electricity, and the way that they affect objects.
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	                <div class="col-sm-6 blog-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
	                			<div class="blog-box-image">
	                				<img src="image/CT.png" alt="" data-at2x="image/CT.png">
	                			</div>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3><a href="#">Communication Technique</a> <i class="fa fa-angle-right"></i></h3>
	                			<div class="blog-box-date"><i class="fa fa-calendar-o"></i> 13 August 2015</div>
		                    	<p>
		                    		The ability to convey information to another effectively and efficiently. Business managers with good verbal, non verbal and written communication skills help facilitate the sharing of information between people within a company for its commercial benefit.
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	            </div>-->
	            
<!--	            <div class="row">
	                <div class="col-sm-6 blog-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
	                			<div class="blog-box-image">
	                				<img src="image/chemistry.png" alt="" data-at2x="image/chemistry.png">
	                			</div>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3><a href="#">Chemistry</a> <i class="fa fa-angle-right"></i></h3>
	                			<div class="blog-box-date"><i class="fa fa-calendar-o"></i> 26 July 2015</div>
		                    	<p>
		                    		Chemistry is a science that deals with the composition, structure, and properties of substances and with the transformations that they undergo.
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	                <div class="col-sm-6 blog-box wow fadeInLeft">
	                	<div class="row">
	                		<div class="col-sm-3">
	                			<div class="blog-box-image">
	                				<img src="image/C-Programming.png" alt="" data-at2x="image/C-Programming.png">
	                			</div>
	                		</div>
	                		<div class="col-sm-9">
	                			<h3><a href="#">Programming in C</a> <i class="fa fa-angle-right"></i></h3>
	                			<div class="blog-box-date"><i class="fa fa-calendar-o"></i> 09 June 2015</div>
		                    	<p>
		                    		C is a high-level and general-purpose programming language that is ideal for developing firmware or portable applications. Originally intended for writing system software, C was developed by Dennis Ritchie in the early 1970s.
		                    	</p>
	                		</div>
	                	</div>
	                </div>
	            </div>-->
	            
	            <div class="row">
	            	<div class="col-sm-12 section-bottom-button wow fadeInUp">
                        <a class="btn btn-warning" href="#">View More</a><br><br>
	            	</div>
	            </div>

	        </div>
        </div>
		
		<!-- Testimonials -->
        <div class="testimonials-container section-container section-container-image-bg">
	        <div class="container">
	            <div class="row">
	                <div class="col-sm-12 testimonials section-description wow fadeIn">
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-sm-10 col-sm-offset-1 testimonial-list wow fadeInUp">
	                	<div role="tabpanel">
	                		<!-- Tab panes -->
	                		<div class="tab-content">
	                			<div role="tabpanel" class="tab-pane fade in active" id="tab1">
	                				<div class="testimonial-image">
	                					<img src="image/01.JPG" alt="" data-at2x="image/01.JPG">
	                				</div>
	                				<div class="testimonial-text">
		                                <p>
		                                	<p>Frontend Designer, Leader</p>
		                                	"I hope that in this year to come, you make mistakes. Because if you are making mistakes, then you are making new things, trying new things, learning, living, pushing yourself, changing yourself, changing your world. You're doing things you've never done before, and more importantly, you're doing something."<br>
		                                	<a href="#">Somesh Kumar Shakya</a>
		                                </p>
	                                </div>
	                			</div>
	                			<div role="tabpanel" class="tab-pane fade" id="tab2">
	                				<div class="testimonial-image">
	                					<img src="image/04.JPG" alt="" data-at2x="image/04.JPG">
	                				</div>
	                				<div class="testimonial-text">
		                                <p>
		                                	<p>JAVA Developer</p>
		                                	"Life is all about evolution. What looks like a mistake to others has been a milestone in my life. Even if people have betrayed me, even if my heart was broken, even if people misunderstood or judged me, I have learned from these incidents. We are human and we make mistakes, but learning from them is what makes the difference."<br>
		                                	<a href="#">Adarsha Shrestha</a>
		                                </p>
	                                </div>
	                			</div>
	                			<div role="tabpanel" class="tab-pane fade" id="tab3">
	                				<div class="testimonial-image">
	                					<img src="image/03.JPG" alt="" data-at2x="image/03.JPG">
	                				</div>
	                				<div class="testimonial-text">
		                                <p>
		                                	<p>Java Developer</p>
		                                	"Learn to enjoy every minute of your life. Be happy now. Don't wait for something outside of yourself to make you happy in the future. Think how really precious is the time you have to spend, whether it's at work or with your family. Every minute should be enjoyed and savored."<br>
		                                	<a href="#">Raju Maharjan</a>
		                                </p>
	                                </div>
	                			</div>
	                			<div role="tabpanel" class="tab-pane fade" id="tab4">
	                				<div class="testimonial-image">
	                					<img src="image/02.JPG" alt="" data-at2x="image/02.JPG">
	                				</div>
	                				<div class="testimonial-text">
		                                <p>
		                                	<p>Backend Develpoer </p>
		                                	"There is an amazing power getting to know your inner self and learning how to use it and not fight with the world. If you know what makes you happy, your personality, interests and capabilities, just use them, and everything else flows beautifully."<br>
		                                	<a href="#">Rubin Awale</a>
		                                </p>
	                                </div>
	                			</div>
	                		</div>
	                		<!-- Nav tabs -->
	                		<ul class="nav nav-tabs" role="tablist">
	                			<li role="presentation" class="active">
	                				<a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab"></a>
	                			</li>
	                			<li role="presentation">
	                				<a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab"></a>
	                			</li>
	                			<li role="presentation">
	                				<a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab"></a>
	                			</li>
	                			<li role="presentation">
	                				<a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab"></a>
	                			</li>
	                		</ul>
	                	</div>
	                </div>
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
