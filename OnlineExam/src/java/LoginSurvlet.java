
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginSurvlet extends HttpServlet {

private ArrayList<String> quesAns = new ArrayList<String>();
private ArrayList<String> Ans=new ArrayList<String>();
private ArrayList<String> option1=new ArrayList<String>();
private ArrayList<String> option2=new ArrayList<String>();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String login_id=request.getParameter("login_id");
            String login_pass=request.getParameter("login_pass");
            
            
            DBConnection db=new DBConnection();
            Connection con=db.getConnection();
            
                   
            String sql="select  top 5  * from tbl_online_exam order by newid()";
            //String sql="select * from tbl_branch_details";
            Statement st=con.createStatement();
            
            
            ResultSet rs=st.executeQuery(sql);
            
            
            while(rs.next()){
                
                quesAns.add(rs.getString(2));
                Ans.add(rs.getString(7));
                option1.add(rs.getString(3));
                
                option2.add(rs.getString(4));
               
                
            }
      request.setAttribute("a", quesAns);
      request.setAttribute("o1", option1);
      request.setAttribute("o2", option2);
      request.setAttribute("ans", Ans);
      
               
                RequestDispatcher rd = request.getRequestDispatcher("/user.jsp");
                rd.forward(request, response);
                quesAns.clear();
                 option1.clear();
                option2.clear();
                Ans.clear();
        } catch (SQLException ex) {
            Logger.getLogger(LoginSurvlet.class.getName()).log(Level.SEVERE, null, ex);
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
