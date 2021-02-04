<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>AidielSportCenter</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link href="css/try.css" rel="stylesheet">
</head>
<body>
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
		<div class="banner-area">
                        <%
                            String name=(String)session.getAttribute("username");
                            String password=(String)session.getAttribute("password");
                            out.print("Welcome " + name);
                        %>
                        
                        
		</div>
		<div class="content-area">
			<div class="wrapper">
				<h2>Make Your Reservation</h2>
                                <div id="grid">
                                    <button id="1" onclick="window.location.href='badmintonpage.jsp'">Badminton</button>
                                    <button id="2" onclick="window.location.href='futsalpage.jsp'">Futsal</button>
                                    <button id="3" onclick="window.location.href='squashpage.jsp'">Squash</button>
                                    <button id="4" onclick="window.location.href='volleyballpage.jsp'">Volleyball</button>
                                </div>
			</div>
		</div>
	</div>
</body>
</html>
