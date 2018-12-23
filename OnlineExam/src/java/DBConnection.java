
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SHRESTHA
 */
public class DBConnection {
    
    public Connection getConnection() throws SQLException{
        Connection con=null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  // load the driver
            con = DriverManager.getConnection("jdbc:sqlserver://SHRESTHA\\MSSQLSERVER2016:1433;databaseName=OnlineExam;user=sa;password=root;");
//            System.out.println("success");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
          
    }
//    public static void main(String args[]) throws SQLException{
//        DBConnection con=new DBConnection();
//        con.getConnection();
//    }
    
}
    
