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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AidielSportCenter</title>
        <link href="css/popup.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/calendar.css" rel="stylesheet"><!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/sportcentre"
         user = "root"  password = ""/>

         <sql:query dataSource = "${snapshot}" var = "resultMon">
            SELECT * from monday WHERE type="Volleyball" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultTue">
            SELECT * from tuesday WHERE type="Volleyball" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultWed">
            SELECT * from wednesday WHERE type="Volleyball" ;
         </sql:query>
         
         <sql:query dataSource = "${snapshot}" var = "resultThu">
            SELECT * from thursday WHERE type="Volleyball" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultFri">
            SELECT * from friday WHERE type="Volleyball" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultSat">
            SELECT * from saturday WHERE type="Volleyball" ;
         </sql:query>
            
         <sql:query dataSource = "${snapshot}" var = "resultSun">
            SELECT * from sunday WHERE type="Volleyball" ;
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
                                        <li><a href="#">My Booking</a></li>
                                        <li><a href="#">My Profile</a></li>
                                    </ul>

				</nav>
			</div>
                
                <div class="table" >
                    <table class="table caption-top">
                        <thead>
                          <tr>
                            <th scope="col">Day</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <tbody>
    <!-- MONDAY -->                       
                          <tr>
                            <th scope="row">Monday</th>
                            <td>
                                <div class="popup" id="popup-1">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup1()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultMon.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Monday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup1()">Check</button>
                            </td>
                          </tr>
    <!-- TUESDAY -->                      
                          <tr>
                            <th scope="row">Tuesday</th>
                            <td>
                                <div class="popup" id="popup-2">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup2()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultTue.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Tuesday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup2()">Check</button>
                            </td>
                          </tr>
    <!-- WEDNESDAY -->                      
                          <tr>
                            <th scope="row">Wednesday</th>
                            <td>
                                <div class="popup" id="popup-3">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup3()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultWed.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Wednesday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup3()">Check</button>
                            </td>
                          </tr>
    <!-- THURSDAY -->                      
                          <tr>
                            <th scope="row">Thursday</th>
                            <td>
                                <div class="popup" id="popup-4">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup4()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultThu.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Thursday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup4()">Check</button>
                            </td>
                          </tr>
    <!-- FRIDAY -->                      
                          <tr>
                            <th scope="row">Friday</th>
                            <td>
                                <div class="popup" id="popup-5">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup5()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultFri.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Friday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup5()">Check</button>
                            </td>
                          </tr>
    <!-- SATURDAY -->                      
                          <tr>
                            <th scope="row">Saturday</th>
                            <td>
                                <div class="popup" id="popup-6">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup6()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultSat.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Saturday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup6()">Check</button>
                            </td>
                          </tr>
    <!-- SUNDAY -->                      
                          <tr>
                            <th scope="row">Sunday</th>
                            <td>
                                <div class="popup" id="popup-7">
                                <div class="overlay"></div>
                                <div class="conte">
                                <div class="close-btn" onclick="togglePopup7()">&times;</div>
                                <h1>Title</h1>
                                    <table class="table">
                                        <thead>
                                          <tr>
                                            <th scope="col">Court</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Slot</th>
                                            <th scope="col">Start</th>
                                            <th scope="col">End</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Reserve</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var = "row" items = "${resultSun.rows}">
                                                <tr>
                                                   <form action="form.jsp" method="POST">
                                                   <td><input type="text" name="testtype" value="${row.type}" size="6" readonly></td>
                                                   <td><input type="text" name="testdate" value="${row.date}" size="6" readonly></td>
                                                   <td><input type="text" name="testslot" value="${row.slot}" size="6"readonly></td>
                                                   <td><input type="text" name="teststart" value="${row.start}" size="6" readonly></td>
                                                   <td><input type="text" name="testend" value="${row.end}" size="6" readonly></td>                                                   
                                                   <td> <c:out value = "${row.status}"/></td>
                                                   <input type="hidden" name="testday" value="Sunday" size="6">
                                                   <td><button id="1" onclick="window.location.href='volleyballpage.jsp'">Reserve</button></td>
                                                   </form>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <button onclick="togglePopup7()">Check</button>
                            </td>
                          </tr>
                          
                            
                        </tbody>
                  </table>
                    
                </div>
                
            </header>
            
            <script>
                function togglePopup1(){
                document.getElementById("popup-1").classList.toggle("active");
                
            }
            function togglePopup2(){
                document.getElementById("popup-2").classList.toggle("active");
            }
            function togglePopup3(){
                document.getElementById("popup-3").classList.toggle("active");
            }
            function togglePopup4(){
                document.getElementById("popup-4").classList.toggle("active");
            }
            function togglePopup5(){
                document.getElementById("popup-5").classList.toggle("active");
            }
            function togglePopup6(){
                document.getElementById("popup-6").classList.toggle("active");
            }
            function togglePopup7(){
                document.getElementById("popup-7").classList.toggle("active");
            }
            </script>
            
    </body>
</html>
