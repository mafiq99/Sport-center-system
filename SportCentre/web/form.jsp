<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Book Vehicle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="css/form.css" />
  </head>
  <body>
      <% 
      String date = request.getParameter("testdate");
      String type = request.getParameter("testtype");
      String slot = request.getParameter("testslot");
      String start = request.getParameter("teststart");
      String end = request.getParameter("testend");
      String day = request.getParameter("testday");
      %>
    <div class="container">
      <div class="book">
        <div class="description">
          <h1><strong>Book</strong> your Ride</h1>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
          <div class="quote">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.
            </p>
          </div>
          <ul>
            <li>Super reliable service</li>
            <li>24/7 customer srvice</li>
            <li>GPS tracking and help</li>
            <li>Wide range vehicle</li>
          </ul>
        </div>
        <div class="form">
            <form action="DBBooking" method="POST">
                <input type="hidden" name="day" value="<%=day%>">
            <div class="inpbox">
              <span class="flaticon-globe"></span>
              <label><b> Court</b>
                  <input type="text" name="type" value="<%=type%>" readonly>
              </label>
            </div>
            <div class="inpbox">
              <span class="flaticon-calendar"></span>
              <label><b> Slot</b>
                   <input type="text" name="slot" value="<%=slot%>" readonly>
              </label>
            </div>
            <div class="inpbox">
              <span class="flaticon-globe"></span>
              <label><b> Time</b>
                    <input type="text" name="time" value="<%=start%>-<%=end%>" readonly>
              </label>
              </div>
            <div class="inpbox">
              <span class="flaticon-calendar"></span>
              <label><b> Date</b>
                  <input type="text" name="date" value="<%=date%>" readonly>
              </label>
              </div>
            <div class="inpbox">
              <span class="flaticon-user"></span>
              <input type="text" placeholder="Full Name">
            </div>
            <div class="inpbox">
              <span class="flaticon-email"></span>
              <input type="email" placeholder="Email">
            </div>
            <div class="inpbox full">
              <div class="inrbox">
                <span class="flaticon-taxi"> Non Member</span>
                <input type="radio" name="plan">
                <h2>RM 30</h2>
                <span>for 2 hours</span>
              </div>
              <div class="inrbox">
                <span class="flaticon-taxi"> Member</span>
                <input type="radio" name="plan">
                <h2>RM 20</h2>
                <span>for 2 hours</span>
              </div>
              
            </div>
            <button class="subt">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>