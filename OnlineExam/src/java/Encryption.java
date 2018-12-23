/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Encryption extends HttpServlet {
    
    private static String Encryption(String str, int length)
    {
    StringBuilder strBuilder = new StringBuilder();
    int shift=2%26;
    char c;
    for (int i = 0; i < length; i++)
    {
        c = str.charAt(i);
        // if c is letter ONLY then shift them, else directly add it
        if (Character.isLetter(c))
        {
        c = (char) (str.charAt(i) + shift);
        // System.out.println(c);

        // checking case or range check is important, just if (c > 'z'
        // || c > 'Z')
        // will not work
        if ((Character.isLowerCase(str.charAt(i)) && c > 'z')
            || (Character.isUpperCase(str.charAt(i)) && c > 'Z'))

            c = (char) (str.charAt(i) - (26 - shift));
        }
        strBuilder.append(c);
    }
    return strBuilder.toString();
    }


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            response.setContentType("text/html;charset=UTF-8");
            
            PrintWriter out = response.getWriter();
            
            String question=request.getParameter("question");
            String option1=request.getParameter("option1");
            String option2=request.getParameter("option2");
            String option3=request.getParameter("option3");
            String option4=request.getParameter("option4");
            String correct=request.getParameter("correct");
           // out.println(question + option1 + option2 + option3 +option4 );
           
            String []ar=new String[2];
            ar[0]=question;
            ar[1]=correct;
            
            
            
            int []length=new int[2];
            length[0]=question.length();
            length[1]=correct.length();
           
                
                   String enc=Encryption(ar[0], length[0]);
                   String op1=Encryption(ar[1], length[1]);
//                   String option11=Encryption(option1,length,k); 

                    String sql="insert into tbl_online_exam (Question,Option1,Option2,Option3,Option4,Correct_ans) "
                            + "values('"+ enc +"','"+ option1 +"','"+ option2 +"','"+ option3 +"','"+ option4 +"','"+ op1 +"' )";
                    DBConnection db=new DBConnection();
                    Connection con=db.getConnection();

                    Statement stmt=con.createStatement();

                    ResultSet rs=stmt.executeQuery(sql);
                    out.println("success");
            
        } catch (SQLException ex) {
            Logger.getLogger(Encryption.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        } 
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
