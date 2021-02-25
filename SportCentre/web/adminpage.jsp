<%-- 
    Document   : adminpage
    Created on : Feb 12, 2021, 9:20:03 PM
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
        <meta charset="UTF-8">
	<title>Admin Page</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link href="css/try.css" rel="stylesheet">
    </head>
    <body>
  <div class="box-area">
		<header>
			<div class="content-area">
			<div class="wrapper">
				<h2>Admin Page</h2>
                                <div id="grid2">
                                    <button id="1" onclick="window.location.href='setdate.jsp'">Set date</button>
                                    <button id="2" onclick="window.location.href='cancelbooking.jsp'">Manage Customer</button>
                                </div>
			</div>
		</div>
		</header>
		</div>
    </body>
</html>

