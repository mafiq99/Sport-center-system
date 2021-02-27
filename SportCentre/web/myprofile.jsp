<%-- 
    Document   : myprofile
    Created on : Feb 4, 2021, 11:46:34 PM
    Author     : Aniq Asyraaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.Customer" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Profile Information</title>
    </head>
    
    <body class="sb-nav-fixed" style="background-color: whitesmoke">
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
                                <a class="nav-link" href="homepage.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Homepage
                                </a>
                                <a class="nav-link" href="myprofile.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                    Profile
                                </a>
                                <div class="sb-sidenav-menu-heading">Main</div>
                                <a class="nav-link" href="about.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                    About
                                </a>
                                <a class="nav-link" href="mybooking.jsp">
                                    <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                    Booking
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
                        <div class="container-fluid">
                            <h1 class="mt-4">My Profile</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">My Profile Details</li>
                            </ol>
                            <div class="row">
    <jsp:useBean id="customer" type="data.Customer" scope="session" />
        <div>
            <div class="container d-grid col-auto mx-auto"><div class="col">
                <table class="table table-striped table-hover">
                    <tbody>
                        <tr>
                            <th><div align="left">NAME</div></th>
                            <td><label><div align="left"><jsp:getProperty name="customer" property="name"/></div></label></td>
                        </tr>
                        <tr>
                            <th><div align="left">EMAIL</div></th>
                            <td><label><div align="left"><jsp:getProperty name="customer" property="email"/></div></label></td>
                        </tr>
                        <tr>
                            <th><div align="left">PHONE NUMBER</div></th>
                            <td><label><div align="left"><jsp:getProperty name="customer" property="phoneNum"/></div></label></td>
                        </tr>
                        <tr>
                            <th><div align="left">IC NUMBER</div></th>
                            <td><label><div align="left"><jsp:getProperty name="customer" property="ic"/></div></label></td>
                        </tr>
                    </tbody>                                
                </table></div></div> 
          <nav>
                <div class="container d-grid col-6 mx-auto"><div class="col-md-12">
                        <a class="btn btn-primary" href="editprofile.jsp">Edit Profile</a>
                    </div></div>
            </nav>
            </div>
                            </div>
                        </div>
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
