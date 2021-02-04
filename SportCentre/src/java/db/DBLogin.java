/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import data.SignIn;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;
/**
 *
 * @author Muaz Amir
 */
@WebServlet("/DBLogin")
public class DBLogin extends HttpServlet {
    
   

    
      //  private Database m_Database;
      //  private ManageAcc m_ManageAcc;
    
    
    
    private JDBCUtility jdbcUtility;   
    private Connection con;
    
    @Override
    public void init() throws ServletException{
        
        String driver = "com.mysql.jdbc.Driver";
        
        String dbName = "sportcentre";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        
        //get JDC connection
        //con = jdbcUtility.jdbcGetConnection();
        
        //prepare the statement once only
        //for the entire servlet lifecycle
        jdbcUtility.prepareSQLStatement();
             
    }
    
    @Override
    
    public void destroy(){
        jdbcUtility.jdbcConClose();
    }

	

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
                
        
        try{
           SignIn signIn = jdbcUtility.checkLogin(username, password);
           String destPage = "LoginPage.jsp";
           
           if(signIn != null){
                      HttpSession session = request.getSession();
                      session.setAttribute("signIn", signIn);
                      session.setAttribute("username", username);
                      session.setAttribute("password", password);
                      destPage ="homepage.jsp";
           }
           else{
               String message = "Invalid username or password";
               request.setAttribute("message", message);
           }
           
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);

    }

}
    
}
