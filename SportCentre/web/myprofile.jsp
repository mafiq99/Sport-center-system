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
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Information</title>
        <tr>
            <th colspan="2"><div align="middle">Profile Information</div></th>
            
        </tr>
    </head>
    
    <body>
        <jsp:useBean id="customer" type="data.Customer" scope="session" />
        <div>
            <table border="1">
                <tbody>
                    <tr>
                        <th width="30%" scope="row"><div align="left">NAME</div></th>
                        <td width="80%"><label><div align="left"><jsp:getProperty name="customer" property="name"/></div></label></td>
                    </tr>
                    <tr>
                        <th scope="row"><div align="left">EMAIL</div></th>
                        <td><label><div align="left"><jsp:getProperty name="customer" property="email"/></div></label></td>
                    </tr>
                    <tr>
                        <th scope="row"><div align="left">PHONE NUMBER</div></th>
                        <td><label><div align="left"><jsp:getProperty name="customer" property="phoneNum"/></div></label></td>
                    </tr>
                    <tr>
                        <th scope="row"><div align="left">IC</div></th>
                        <td><label><div align="left"><jsp:getProperty name="customer" property="ic"/></div></label></td>
                    </tr>
                </tbody>                                
            </table> 
            <nav>
                <ul>
                   
                    <li><a href="editprofile.jsp">Edit Profile</a></li>
                </ul>

            </nav>
        </div>
    </body>
</html>
