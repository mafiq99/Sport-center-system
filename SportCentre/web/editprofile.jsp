<%-- 
    Document   : editprofile
    Created on : Feb 5, 2021, 3:06:45 AM
    Author     : Aniq Asyraaf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.Customer" %>
<!DOCTYPE html>
<html>
    <head>
        <title>EDIT PROFILE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        
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
                            <h1 class="mt-4">Edit Profile</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">Edit My Profile Details</li>
                            </ol>
                            <div class="row">
                                <jsp:useBean id="customer" type="data.Customer" scope="session" />
        
        <!-- Page Content -->
        <div class="row">
           
            <div class="col">
                <!-- Page Content -->
                <div class="container-custom">
                    <nav class="navbar navbar-dark bg-dark">
                        <div style="height:36px">
                            <p class="navbar-brand"><i class="far fa-edit"></i> EDIT PROFILE</p>
                        </div>
                    </nav>
                    <div class="jumbotron">      
                            <form name="form" action="DBUpdateProfile" method="post" onsubmit="return validate()">
                                <div class="edit-profile-container">
                                <table class="table table-striped table-light custom-shadow">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th colspan="2"><div align="middle">Profile Information</div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="form-group row td-custom">
                                                    <label for="name" class="col-sm-5 col-form-label" style="font-weight: bolder;">NAME</label>
                                                    <div class="col-sm">
                                                        <input type="text" class="form-control" name="name" id="name" required value="<jsp:getProperty name="customer" property="name"/>">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-group row td-custom">
                                                    <label for="phoneNum" class="col-sm-5 col-form-label" style="font-weight: bolder;">PHONE NUMBER</label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" name="phoneNum" id="phoneNum" required value="<jsp:getProperty name="customer" property="phoneNum"/>">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-group row td-custom">
                                                    <label for="email" class="col-sm-5 col-form-label" style="font-weight: bolder;">EMAIL</label>
                                                    <div class="col-sm">
                                                        <input type="email" class="form-control" name="email" id="email" required value="<jsp:getProperty name="customer" property="email"/>">
                                                    </div>
                                                </div>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-group row td-custom">
                                                    <label for="password" class="col-sm-5 col-form-label" style="font-weight: bolder;">PASSWORD</label>
                                                    <div class="col-sm">
                                                        <input type="password" class="form-control" name="password" id="password" required value="<jsp:getProperty name="customer" property="password"/>">
                                                    </div>
                                                </div>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-group row" style="height: 25px;">
                                                    <label for="password2" class="col-sm-5 col-form-label" style="font-weight: bolder;">CONFIRM PASSWORD</label>
                                                    <div class="col-sm">
                                                        <input type="password" class="form-control" name="password2" id="password2" required value="<jsp:getProperty name="customer" property="password"/>">
                                                    </div>
                                                </div>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div class="form-group td-custom" align="middle" >
                                                    <span style="color:red; font-weight: bold; align-content: center;">
                                                        <br><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%><br>
                                                    </span><br>
                                                    <input type='hidden' name='id' value="<jsp:getProperty name="customer" property="ID"/>">
                                                    <input type="hidden" name="option" id="option" value = "submitEditData">
                                                    <button type="submit" class="btn btn-success" name="button"><i class="fas fa-user-edit"></i>Update</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>                                
                                </table>
                               </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT -->
            
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
        
         
        <!-- END PAGE CONTENT -->
        
        <script>
            function validate() { 
                var name = document.form.name.value;
                var email = document.form.email.value;
                var phoneNum = document.form.phoneNum.value; 
                var password = document.form.password.value;
                var conpassword= document.form.password2.value;
                var role= document.form.role.value;

                if (name===null || name==="") { 
                    alert("Name can't be blank"); 
                    return false; 
                }
                else if (email===null || email==="") { 
                    alert("Email can't be blank"); 
                    return false; 
                }
                else if (phoneNum===null || phoneNum==="") { 
                    alert("Phone Number can't be blank"); 
                    return false; 
                }
                else if(password.length<8) { 
                    alert("Password must be at least 6 characters long."); 
                    return false; 
                } 
                else if (password!=conpassword) { 
                    alert("Confirm Password should match with the Password"); 
                    return false; 
                } 
            } 
        </script> 
        
        
    </body>
</html>

