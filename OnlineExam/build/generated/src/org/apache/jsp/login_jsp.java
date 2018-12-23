package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>On-Er-Examination | LogIn</title>\n");
      out.write("<!--CSS Starts-->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/animate.css\" type=\"text/css\" />\n");
      out.write("\t<link rel=\"shortcut icon\" href=\"images/title-icon.png\"/>\n");
      out.write("\t\n");
      out.write("\t<style>\n");
      out.write("\t\th2{\n");
      out.write("\t\t\tfont-size: 2.5em;\n");
      out.write("\t\t\tcolor: aliceblue;\n");
      out.write("\t\t\tmargin-bottom:30px;\n");
      out.write("\t\t\tborder-bottom:1px solid #e5e5e5;\n");
      out.write("\t\t\tpadding-bottom:10px;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput[type=\"text\"],[type=\"password\"]{\n");
      out.write("\t\t\theight:25px;\n");
      out.write("\t\t\twidth:200px;\n");
      out.write("\t\t\tfont-size:15px;\n");
      out.write("\t\t\tmargin-bottom:10px;\n");
      out.write("\t\t\tbackground-color:#fff;\n");
      out.write("\t\t}\n");
      out.write("\t\tinput[type=\"submit\"]:hover{\n");
      out.write("\t\t\tborder-bottom:4px solid #2ECC71;\n");
      out.write("\t\t\tbackground-color: #27AE60;\n");
      out.write("\t\t\tcolor: #ffffff;\n");
      out.write("\t\t\tcursor: pointer;\n");
      out.write("\t\t}\n");
      out.write("\t\t.btn_login{\n");
      out.write("\t\t\twidth: 200px;\n");
      out.write("\t\t\tpadding:10px 25px;\n");
      out.write("\t\t\tcursor:pointer;\n");
      out.write("\t\t\tcolor:#fff;\n");
      out.write("\t\t\tborder:none;\n");
      out.write("\t\t\tborder-radius:5px;\n");
      out.write("\t\t\tbackground-color:#2ECC71;\n");
      out.write("\t\t\tborder-bottom:4px solid #27AE60;\n");
      out.write("\t\t\tmargin-bottom:20px;\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("<!--CSS Ends-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"body_div\">\n");
      out.write("\t<!--header start-->\n");
      out.write("\t\t<div class=\"header\">\n");
      out.write("\t\t\t<div class=\"logoWidget\">\n");
      out.write("\t\t\t\t<h1><a href=\"index.php\"/>On-Er-Examination</a></h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"navigation\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li class=\"first selected\">\n");
      out.write("\t\t\t\t\t\t<a href=\"index.php\"><img class=\"homeicon\" src=\"images/home-icon-white_338306.png\">Home</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t<!--header end-->\n");
      out.write("\n");
      out.write("\t<!--content start-->\n");
      out.write("\t\t<div class=\"contents\">\n");
      out.write("\t\t\t<div class=\"body\">\n");
      out.write("\t\t\t\t<h2>Welcome To Online Examination</h2>\n");
      out.write("\t\t\t\t<center>\n");
      out.write("\t\t\t\t\t<div class=\"form fadeIn animated\">\n");
      out.write("\t\t\t\t\t\t<h2>Log In</h2>\n");
      out.write("\t\t\t\t\t\t<img src=\"images/boy-512.png\" alt=\"img\">\n");
      out.write("\t\t\t\t\t\t<form action=\"LoginSurvlet\" method=\"POST\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" name=\"login_id\" placeholder=\"Username\" id=\"loginid2\"></br>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"password\" name=\"login_pass\" placeholder=\"Password\" id=\"pass2\"></br></br>\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" name=\"submit\" value=\"Sign in to Account\" class=\"btn_login\"></br>\n");
      out.write("\t\t\t\t\t\t\t<!--<a href=\"reset.php\">Forgot Password ???</a>-->\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</center>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t<!--content end-->\n");
      out.write("\n");
      out.write("\t<!--footer start-->\n");
      out.write("\t\t<div class=\"footer\">\n");
      out.write("\t\t\t<span class=\"footnote\">&copy; Copyright &copy; 2016. All rights reserved</span>\n");
      out.write("\t\t</div>\n");
      out.write("\t<!--footer end-->\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!--<?php\n");
      out.write("\tif(isset($_POST['submit'])){\n");
      out.write("\t\t$con=mysqli_connect(\"localhost\",\"root\",\"\",\"project\");\n");
      out.write("\t\t$un=$_POST['loginid'];\n");
      out.write("\t\t$pass=$_POST['pass'];\n");
      out.write("\t\t\n");
      out.write("\t\t$sql=\"select * from user where username='$un' and pass='$pass'\";\n");
      out.write("\t\t$que=mysqli_query($con,$sql);\n");
      out.write("\t\tif(mysqli_num_rows($que)>0){\n");
      out.write("\t\t\tsetcookie(\"user\",$un);\n");
      out.write("\t\t\techo \"<script>window.open('user.php','_self');</script>\";\n");
      out.write("\t\t}\n");
      out.write("\t\telse{\n");
      out.write("\t\t\techo \"<script>alert('Invalid Username/password');</script>\";\n");
      out.write("\t\t\techo \"<script>window.open('login.php','_self');</script>\";\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("?>-->\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
