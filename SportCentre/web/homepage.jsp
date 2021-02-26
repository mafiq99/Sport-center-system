<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Aidiel Sport Center</title>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link href="css/style2.css" rel="stylesheet">
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
                            <a class="dropdown-item" href="#">Settings</a> 
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="login.html">Logout</a>
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
                            <h1 class="mt-4">Home Page</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">Home Page</li>
                            </ol>
                            <div class="row">
                                <div class="col-xl-3 col-md-6">
                                    <div class="card bg-primary text-white mb-4">
                                        <div class="card-body">Badminton</div>
                                        <img src="img/badminton.jpg" alt="Trulli" width="500" height="333" class="center">
                                        <br>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="badmintonpage.jsp">Book now!</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="card bg-warning text-white mb-4">
                                        <div class="card-body">Futsal</div>
                                        <img src="img/court futsal.jpg" alt="Trulli" width="500" height="333" class="center">
                                        <br>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            
                                            <a class="small text-white stretched-link" href="futsalpage.jsp">Book now!</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="card bg-success text-white mb-4">
                                        <div class="card-body">Squash</div>
                                        <img src="img/squash.jpg" alt="Trulli" width="500" height="333" class="center">
                                        <br>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="squashpage.jsp">Book now!</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-md-6">
                                    <div class="card bg-danger text-white mb-4">
                                        <div class="card-body">Volleyball</div>
                                        <img src="img/court volleyball.jpg" alt="Trulli" width="500" height="333" class="center">
                                        <br>
                                        <div class="card-footer d-flex align-items-center justify-content-between">
                                            <a class="small text-white stretched-link" href="volleyballpage.jsp ">Book now!</a>
                                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                        </div>
                                    </div>
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
    
    <%--<div class="box-area">
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
                                        <li><a href="myprofile.jsp">My Profile</a></li>
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
    --%>
</body>
</html>
