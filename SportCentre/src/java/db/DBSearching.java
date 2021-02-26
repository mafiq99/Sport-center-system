/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import data.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.JDBCUtility;

/**
 *
 * @author STUDENT
 */
@WebServlet(name = "DBSearching", urlPatterns = {"/DBSearching"})
public class DBSearching extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
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
        con = jdbcUtility.jdbcGetConnection();
        jdbcUtility.prepareSQLStatement();
    }        

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int insertStatus = 0;
        String username = request.getParameter("user");
        String court, slot, time, date, presence, orderID;
        try {                    
            PreparedStatement preparedStatement = jdbcUtility.psSearching();
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();
            PrintWriter out = response.getWriter();
            
            out.println("<h2>View All Booking</h2>");
            out.println("<table border='1'>");
            out.println("  <thead>");
            out.println("    <tr>");
            out.println("       <th>Order ID</th>");
            out.println("       <th>Username</th>");
            out.println("       <th>Court</th>");
            out.println("       <th>Slot</th>");
            out.println("       <th>Time</th>");
            out.println("       <th>Date</th>");
            out.println("       <th></th>");
            out.println("       <th></th>");
            out.println("    </tr>");
            out.println("  </thead>");
            out.println("  <tbody>");
            
            while (rs.next()) {
                court = rs.getString("Court");
                slot = rs.getString("Slot");
                time = rs.getString("Time");
                date = rs.getString("Date");
                orderID = rs.getString("orderID");
                presence = rs.getString("attendance");
                out.println("    <tr>");
                out.println("       <td>" + orderID + "</td>");
                out.println("       <td>" + username + "</td>");
                out.println("       <td>" + court + "</td>");
                out.println("       <td>" + slot + "</td>");
                out.println("       <td>" + time + "</td>");
                out.println("       <td>" + date + "</td>");
                if( presence.equals("Presence")){
                    out.println("       <td>Presence</td>");
                    
                    out.println("       <td>");
                    out.println("       <input type='submit' value='Cancel Booking' disabled> </form>");
                    out.println("       </td>"); 
                }
                else{
                    out.println("       <td> <form action='DBUpdateAttandance' method='post'>  ");                    
                    out.println("       <input type='hidden' name='id' value='" + orderID + "'> ");
                    out.println("       <input type='submit' value='Click Here'> </form>");
                    out.println("       </td>"); 
                               
                    out.println("       <td> <form action='DBCancelBooking' method='post'>  ");                    
                    out.println("       <input type='hidden' name='id' value='" + orderID + "'> ");
                    out.println("       <input type='submit' value='Cancel Booking'> </form>");
                    out.println("       </td>"); 
                }
            }
                out.println("  <tbody>");
                out.println("</table>");
        }
	catch (SQLException ex)
	{
            while (ex != null)
            {
                System.out.println ("SQLState: " +
                                 ex.getSQLState ());
                System.out.println ("Message:  " +
                                 ex.getMessage ());
		System.out.println ("Vendor:   " +
                                 ex.getErrorCode ());
                ex = ex.getNextException ();
		      System.out.println ("");
            }
            
            System.out.println("Connection to the database error");
            
            PrintWriter out = response.getWriter();

            out.println("<script>");
            out.println("    alert('Booking failed');");
            out.println("    window.location = 'adminpage.jsp'");
            out.println("</script>");            
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
            
            
	}       
    }
    
    void sendPage(HttpServletRequest req, HttpServletResponse res, String fileName) throws ServletException, IOException
    {
        // Get the dispatcher; it gets the main page to the user
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(fileName);

	if (dispatcher == null)
	{
            System.out.println("There was no dispatcher");
	    // No dispatcher means the html file could not be found.
	    res.sendError(res.SC_NO_CONTENT);
	}
	else
	    dispatcher.forward(req, res);
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
