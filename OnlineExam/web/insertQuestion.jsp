<%-- 
    Document   : insertQuestion
    Created on : Jul 24, 2017, 6:54:56 PM
    Author     : SHRESTHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="Encryption">
        Question:<br>
        <input type="text" name="question">
        <br>
        Option 1<input type="text" name="option1"><br>
        option2<input type="text" name="option2"><br>
        option3<input type="text" name="option3"><br>
        option4<input type="text" name="option4">  <br>
        Correct Answer<input type="text" name="correct">  <br>
        
        <input type="submit" value="submit"><br>
        </form>
    </body>
</html>
