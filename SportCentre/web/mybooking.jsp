<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AidielSportCenter</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link href="css/mybooking.css" rel="stylesheet">
</head>
<body>
    <%
                            String name=(String)session.getAttribute("username");
                            String password=(String)session.getAttribute("password");
                            out.print("Welcome " + name);
                        %>
    <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/sportcentre"
         user = "root"  password = ""/>   
    <sql:query dataSource = "${snapshot}" var = "result">
        SELECT * from booking WHERE username=? ;
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
                                        <li><a href="mybooking.jsp">My Booking</a></li>
                                        <li><a href="#">My Profile</a></li>
                                    </ul>

				</nav>
			</div>
		</header>
		
		
			
		</div>
</body>
</html>
