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
@WebServlet(name = "DBBooking", urlPatterns = {"/DBBooking"})
public class DBBooking extends HttpServlet {
    
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
        HttpSession session=request.getSession();  
        String username=(String)session.getAttribute("username");
        String court = request.getParameter("type");
        String slot = request.getParameter("slot");
        String time = request.getParameter("time");
        String date = request.getParameter("date");
        String day = request.getParameter("day");
        
        try {                    
            PreparedStatement preparedStatement = jdbcUtility.psInsertBooking();
            
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, court);
            preparedStatement.setString(3, slot);
            preparedStatement.setString(4, time);
            preparedStatement.setString(5, date);
            
            insertStatus = preparedStatement.executeUpdate();
            
            PrintWriter out = response.getWriter();
            
            out.println(insertStatus);
            
            if (insertStatus == 1) {
                PreparedStatement preparedStatement1 = jdbcUtility.psUpdateSunday();
                
                preparedStatement1.setString(1, "Unavailable");
                preparedStatement1.setString(2, court);
                preparedStatement1.setString(3, slot);
                preparedStatement1.executeUpdate();
                
                out.println("<script>");
                out.println("    alert('Booking success');");
                out.println("    window.location = 'try.jsp'");
                out.println("</script>");
            }
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
            out.println("    window.location = '/DBDataTable'");
            out.println("</script>");            
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
            
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("    alert('Booking failed');");
            out.println("    window.location = '/DBDataTable'");
            out.println("</script>");
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
