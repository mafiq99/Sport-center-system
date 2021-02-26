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
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AidielSportCenter</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	 <link href="css/popup.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/calendar.css" rel="stylesheet"><!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
            <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
                <a class="navbar-brand" href="homepage.jsp">Aidiel Sport Centre</a>
                <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
                <!-- Navbar Search-->
                <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                    <div class="input-group">
                    </div>
                </form>
                <!-- Navbar-->
                <ul class="navbar-nav ml-auto ml-md-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                           
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="DBLogout">Logout</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                        <div class="sb-sidenav-menu">
                            <div class="nav">
                                <div class="sb-sidenav-menu-heading">Core</div>
                                 <a class="nav-link" href="setdate.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Set Date
                                </a>
                                <a class="nav-link" href="cancelbooking.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Manage Customer
                                </a>
                                      
                                

                                
                                
                            </div>
                        </div>
                        <div class="sb-sidenav-footer">
                            <div class="small">Logged in as:</div>
                            <%
                            String name=(String)session.getAttribute("username");

                            out.print(name);
                        %>
                        </div>
                    </nav>
                </div>
                <div id="layoutSidenav_content">
                    <main>
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
    <!-- MONDAY -->     <form action="DBSetDate" method="POST">                  
                          <tr>
                            <th scope="row">Monday</th>
                            
                            <td>                               
                                    <input type="date" id="mon" name="monday">                              
                            </td>
                          </tr>
    <!-- TUESDAY -->                      
                          <tr>
                            <th scope="row">Tuesday</th>
                            <td>                               
                                    <input type="date" id="tue" name="tuesday">                              
                            </td>
                          </tr>
    <!-- WEDNESDAY -->                      
                          <tr>
                            <th scope="row">Wednesday</th>
                            <td>                               
                                    <input type="date" id="wed" name="wednesday">                              
                            </td>
                          </tr>
    <!-- THURSDAY -->                      
                          <tr>
                            <th scope="row">Thursday</th>
                            <td>                               
                                    <input type="date" id="thu" name="thursday">                              
                            </td>
                          </tr>
    <!-- FRIDAY -->                      
                          <tr>
                            <th scope="row">Friday</th>
                            <td>                               
                                    <input type="date" id="fri" name="friday">                              
                            </td>
                          </tr>
    <!-- SATURDAY -->                      
                          <tr>
                            <th scope="row">Saturday</th>
                            <td>                               
                                    <input type="date" id="sat" name="saturday">                              
                            </td>
                          </tr>
    <!-- SUNDAY -->                      
                          <tr>
                            <th scope="row">Sunday</th>
                            <form action="DBSetDate" method="POST">
                            <td>                               
                                    <input type="date" id="sun" name="sunday">                              
                            </td>
                            
                            
                          </tr>
                          <tr>
                            <th scope="row"></th>
                              <td>
                                <button class="subt">Submit</button>
                            </td>
                          </tr>
                          
                        </form>     
                        </tbody>
                  </table>
                    
                </div>
                
            </header>
                    </main>
                    <footer class="py-4 bg-light mt-auto">
                        <div class="container-fluid">
                            <div class="d-flex align-items-center justify-content-between small">
                                
                        </div>
                    </footer>
                </div>
            </div>
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="js/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
            <script src="assets/demo/chart-area-demo.js"></script>
            <script src="assets/demo/chart-bar-demo.js"></script>
            <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
            <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
            <script src="assets/demo/datatables-demo.js"></script>
	
    </body>
</html>

