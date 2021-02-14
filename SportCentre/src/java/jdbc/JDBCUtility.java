/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.util.*;
import java.sql.*;
import data.SignIn;

/**
 *
 * @author U
 */
public class JDBCUtility 
{
            Connection con;
            String driver;
            String url;
            String userName;
            String password;

              PreparedStatement psRegCustomer = null;
              
              PreparedStatement psLogin = null;
              
              PreparedStatement psInsertBooking = null;  
              
              PreparedStatement psUpdateMonday= null;
              PreparedStatement psUpdateTuesday= null;
              PreparedStatement psUpdateWednesday= null;
              PreparedStatement psUpdateThursday= null;
              PreparedStatement psUpdateFriday= null;
              PreparedStatement psUpdateSaturday= null;
              PreparedStatement psUpdateSunday= null;
              
              PreparedStatement psDateMonday=null;              
              PreparedStatement psDateTuesday=null;
              PreparedStatement psDateWednesday=null;
              PreparedStatement psDateThursday=null;
              PreparedStatement psDateFriday=null;
              PreparedStatement psDateSaturday=null;
              PreparedStatement psDateSunday=null;
              
              PreparedStatement psCancelBooking=null;
              PreparedStatement psSearching=null;

            //use this constructor if using ConnectionPool
            public JDBCUtility()
            {
            }

            //use this constructor if not using ConnectionPool
            //ConnectionPool is used for multi user!
            public JDBCUtility(String driver,
                               String url,
                               String userName,
                               String password)
            {
               this.driver = driver;
               this.url = url;
               this.userName = userName;
               this.password = password;
            }

            public  void jdbcConnect()
            {
                 try
                 {
                      Class.forName (driver);
                      con = DriverManager.getConnection(url, userName, password);
                      DatabaseMetaData dma = con.getMetaData ();
                      System.out.println("\nConnected to " + dma.getURL());
                      System.out.println("Driver       " + dma.getDriverName());
                      System.out.println("Version      " + dma.getDriverVersion());
                      System.out.println("");
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
                 }
                 catch (java.lang.Exception ex)
                 {
                      ex.printStackTrace ();
                 }
            }

            public Connection jdbcGetConnection()
            {
                 return con;
            }

            public void jdbcConClose()
            {
                 try
                 {
                  con.close();
                 }
                 catch (Exception ex)
                    {
                    }
            }

             public void prepareSQLStatement()
             {      
                 try
                 {
                     //insert student
                       String sqlRegCustomer = "INSERT INTO customer(username, password, name, ic, phoneNum, email) VALUES(?, ?, ?, ?, ?, ?)";
                       psRegCustomer = con.prepareStatement(sqlRegCustomer);
                       
                       String sqlInsertBooking = "INSERT INTO booking(username, Court, Slot, Time, Date) VALUES(?, ?, ?, ?, ?)";
                       psInsertBooking = con.prepareStatement(sqlInsertBooking);
                       
                       String sqlUpdateMonday = "UPDATE monday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateMonday = con.prepareStatement(sqlUpdateMonday);
                       String sqlUpdateTuesday = "UPDATE tuesday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateTuesday = con.prepareStatement(sqlUpdateTuesday);                      
                       String sqlUpdateWednesday = "UPDATE wednesday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateWednesday = con.prepareStatement(sqlUpdateWednesday);
                       String sqlUpdateThursday = "UPDATE thursday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateThursday = con.prepareStatement(sqlUpdateThursday);
                       String sqlUpdateFriday = "UPDATE friday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateFriday = con.prepareStatement(sqlUpdateFriday);
                       String sqlUpdateSaturday = "UPDATE saturday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateSaturday = con.prepareStatement(sqlUpdateSaturday);
                       String sqlUpdateSunday = "UPDATE sunday SET Status = ? WHERE Type = ? AND Slot = ?"; 
                       psUpdateSunday = con.prepareStatement(sqlUpdateSunday);
                       
                       String sqlDateMonday = "UPDATE monday SET Date = ? "; 
                       psDateMonday = con.prepareStatement(sqlDateMonday);
                       String sqlDateTuesday = "UPDATE tuesday SET Date = ? "; 
                       psDateTuesday = con.prepareStatement(sqlDateTuesday);                      
                       String sqlDateWednesday = "UPDATE wednesday SET Date = ? "; 
                       psDateWednesday = con.prepareStatement(sqlDateWednesday);
                       String sqlDateThursday = "UPDATE thursday SET Date = ? "; 
                       psDateThursday = con.prepareStatement(sqlDateThursday);
                       String sqlDateFriday = "UPDATE friday SET Date = ? "; 
                       psDateFriday = con.prepareStatement(sqlDateFriday);
                       String sqlDateSaturday = "UPDATE saturday SET Date = ? "; 
                       psDateSaturday = con.prepareStatement(sqlDateSaturday);
                       String sqlDateSunday = "UPDATE sunday SET Date = ? "; 
                       psDateSunday = con.prepareStatement(sqlDateSunday);
                       
                       String sqlSearching = "SELECT * FROM booking where username = ?";
                       psSearching = con.prepareStatement(sqlSearching);
                       
                       String sqlCancelBooking = "DELETE FROM booking where username = ?";
                       psCancelBooking = con.prepareStatement(sqlCancelBooking);
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
                 }
                 catch (java.lang.Exception ex)
                 {
                     ex.printStackTrace ();
                 }
             }

                public PreparedStatement psRegCustomer()
                {
                  return psRegCustomer;
                } 
                
                public PreparedStatement psInsertBooking()
                {
                  return psInsertBooking;
                }                
                public PreparedStatement psUpdateMonday()
                {
                  return psUpdateMonday;
                }
                public PreparedStatement psUpdateTuesday()
                {
                  return psUpdateTuesday;
                }
                public PreparedStatement psUpdateWednesday()
                {
                  return psUpdateWednesday;
                }
                public PreparedStatement psUpdateThursday()
                {
                  return psUpdateThursday;
                }
                public PreparedStatement psUpdateFriday()
                {
                  return psUpdateFriday;
                }
                public PreparedStatement psUpdateSaturday()
                {
                  return psUpdateSaturday;
                }
                public PreparedStatement psUpdateSunday()
                {
                  return psUpdateSunday;
                } 
                
                public PreparedStatement psDateMonday()
                {
                  return psDateMonday;
                }
                public PreparedStatement psDateTuesday()
                {
                  return psDateTuesday;
                }
                public PreparedStatement psDateWednesday()
                {
                  return psDateWednesday;
                }
                public PreparedStatement psDateThursday()
                {
                  return psDateThursday;
                }
                public PreparedStatement psDateFriday()
                {
                  return psUpdateFriday;
                }
                public PreparedStatement psDateSaturday()
                {
                  return psDateSaturday;
                }
                public PreparedStatement psDateSunday()
                {
                  return psDateSunday;
                } 
                
                public PreparedStatement psCancelBooking()
                {
                  return psCancelBooking;
                } 
                
                public PreparedStatement psSearching()
                {
                  return psSearching;
                }
                
                //LOGIN DAO
    
                public void loadDriver(String driver)
                {
                    try {
                    	Class.forName(driver);
                    } catch (ClassNotFoundException e) {
			
                    e.printStackTrace();
		}
                }
    
                public Connection getConnection()
                {
                    Connection con = null;
                    try {
			con = DriverManager.getConnection(url, userName, password);
                    } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
                    }
                    return con;
                }
    
    
                public SignIn checkLogin(String username, String password)throws SQLException,
                ClassNotFoundException {
        
         
                loadDriver(driver);
                Connection con = getConnection();
        
                String sql = "select * from customer where username = ? and password = ?";
                PreparedStatement ps;
        

                ps = con.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);

                ResultSet result=ps.executeQuery();

                SignIn signIn = null;

                if(result.next()){
                    signIn = new SignIn();
                    signIn.setName(result.getString("Name"));
                    signIn.setEmail(result.getString("email"));
                    signIn.setIc(result.getString("ic"));
                    signIn.setPhoneNum(result.getInt("phoneNum"));
                    signIn.setID(result.getInt("ID"));
                    signIn.setPassword(result.getString("password"));
                   
                }

                con.close();

                return signIn;
            
        
                }
   }
