<%-- 
    Document   : About
    Created on : Jan 15, 2021, 10:11:03 AM
    Author     : 60192
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AIDIEL SPORT CENTRE</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/navbar-fixed-top.css" rel="stylesheet">
    <link href="css/bootstrap-toggle.min.css" rel="stylesheet">
    </head>
    <body style="background-color: yellow">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AIDIEL SPORT CENTRE</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="Homepage.jsp">Home</a></li>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">My Profile</a></li>
                <li><a href="#">My Booking</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header"></li>
                <li><a href="#">Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1></h1>
        <p>This sports centre was built in 2023 and still stands to this day. The name of this center is taken from the name of its founder himself, Datuk Dr Muhammad Aidiel Bin Jamallullail.</p>
        <br><br><br>
        <p><i><b>"I feel that people need to have a good healthy life, therefore I come up with the idea to built this sport centre so that many people will have more fun to work out their body." - Datuk Dr Muhammad Aidiel</b></i></p>
        
      </div>

    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-toggle.min.js"></script>      
  </body>
</html>
