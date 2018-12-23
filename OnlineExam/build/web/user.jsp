<%-- 
    Document   : user.jsp
    Created on : Jul 20, 2017, 3:38:41 PM
    Author     : SHRESTHA
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>WelCome this is User Page</h1>
        <form action="secondsurvlet" method="post">
        
        <%
           ArrayList<String> quesAn=(ArrayList<String>)request.getAttribute("a");
           ArrayList<String> newo1=(ArrayList<String>)request.getAttribute("o1");
            ArrayList<String> newo2=(ArrayList<String>)request.getAttribute("o2");
           ArrayList<String> ans=(ArrayList<String>)request.getAttribute("ans");
           
           //out.println(quesAn.get(1));
           
           String question=quesAn.get(1);
           String option1=newo1.get(1);
           String option2=newo2.get(1);
           String correct=ans.get(1);
           
           String questio2=quesAn.get(2);
           
           String q2o1=newo1.get(2);
           String q2o2=newo2.get(2);
           String q2correct=ans.get(2);
           
//           for(int i=0;i<quesAn.size();i++){
//               
//               out.println(quesAn.get(i));
//           }
            
           %>
           <br>
         <%  
             long start = System.currentTimeMillis();         
                long end = start + 60*1000; // 60 seconds * 1000 ms/sec
//                while (System.currentTimeMillis() < end)
//                    {
//                    // run
//                    }
                    out.println(start);
                    out.println(end);
                    %>


           1.<% 
               out.println(quesAn.get(1)); %>?<br>
              <input type="radio" name="gender" value="<%= option1 %>"><%
                                                                        out.println(option1);
                                                                        %>
              <input type="radio" name="gender" value="<%=option2%>"><%                             
                                                                        out.println(option2);
                                                                        %>
              <input type="hidden" name="correct" value="<%= correct %>"><br>
              
              
              <br>2.<% 
                  out.println(questio2); %>?<br>
              <input type="radio" name="gende" value="<%= q2o1 %>"><%
                                                                        out.println(q2o1);
                                                                        %>
              <input type="radio" name="gende" value="<%=q2o2%>"><%                             
                                                                        out.println(q2o2);
                                                                        %>
              <input type="hidden" name="q2correct" value="<%= q2correct %>"><br>
              
              
               <br><input type="submit" value="ok">                                 
        </form>                                
                                                
    </body>
</html>
