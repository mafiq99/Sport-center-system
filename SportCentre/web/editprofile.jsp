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
      
        
    </head>
    
    <body>
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
                        <div class="edit-profile-container">
                            <form name="form" action="ManageUserController" method="post" onsubmit="return validate()">
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
                                            <td>
                                                <div class="form-group row td-custom">
                                                    <label for="phoneNum" class="col-sm-4 col-form-label" style="font-weight: bolder;">PHONE NUMBER</label>
                                                    <div class="col-sm-8">
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
                                                    <input type="hidden" name="option" id="option" value = "submitEditData">
                                                    <button type="submit" class="btn btn-success" name="button"><i class="fas fa-user-edit"></i> Submit</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>                                
                                </table
                            </form>
                        </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT -->
            </div>
        </div> 
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
        
        <jsp:include page="../../allModules/footer.jsp" />
    </body>
</html>

