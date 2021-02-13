<%-- 
    Document   : badmintonpage
    Created on : Jan 29, 2021, 12:23:22 PM
    Author     : 60192
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AidielSportCenter</title>
        <link href="css/popup.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/calendar.css" rel="stylesheet"><!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/sportcentre"
         user = "root"  password = ""/>

         <sql:query dataSource = "${snapshot}" var = "resultMon">
            SELECT * from monday WHERE type="Badminton" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultTue">
            SELECT * from tuesday WHERE type="Badminton" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultWed">
            SELECT * from wednesday WHERE type="Badminton" ;
         </sql:query>
         
         <sql:query dataSource = "${snapshot}" var = "resultThu">
            SELECT * from thursday WHERE type="Badminton" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultFri">
            SELECT * from friday WHERE type="Badminton" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultSat">
            SELECT * from saturday WHERE type="Badminton" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultSun">
            SELECT * from sunday WHERE type="Badminton" ;
         </sql:query>
            
        <div class="box-area">
            
            <header>
			<div class="wrapper">
				<div class="logo">
					<a href="#">AidielSportCenter</a>
				</div>
				<nav>
                                    <ul>
                                        <li><a href="homepage.jsp">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="#">My Booking</a></li>
                                        <li><a href="#">My Profile</a></li>
                                    </ul>

				</nav>
			</div>
                
                <div class="table" >
                    <table class="table caption-top">
                        <thead>
                          <tr>
                            <th scope="col">Day</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <tbody>
    <!-- MONDAY -->                       
                          <tr>
                            <th scope="row">Monday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="mon" name="monday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- TUESDAY -->                      
                          <tr>
                            <th scope="row">Tuesday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="tue" name="tuesday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- WEDNESDAY -->                      
                          <tr>
                            <th scope="row">Wednesday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="wed" name="wednesday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- THURSDAY -->                      
                          <tr>
                            <th scope="row">Thursday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="thu" name="thursday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- FRIDAY -->                      
                          <tr>
                            <th scope="row">Friday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="fri" name="friday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- SATURDAY -->                      
                          <tr>
                            <th scope="row">Saturday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="sat" name="saturday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
    <!-- SUNDAY -->                      
                          <tr>
                            <th scope="row">Sunday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="sun" name="sunday">                              
                            </td>
                            <td>
                                <button class="subt">Submit</button>
                            </td>
                            </form> 
                          </tr>
                          
                            
                        </tbody>
                  </table>
                    
                </div>
                
            </header>

            

    </body>
</html>
