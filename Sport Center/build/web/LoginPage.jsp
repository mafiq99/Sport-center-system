<%-- 
    Document   : LoginPage
    Created on : Jan 13, 2021, 8:46:25 PM
    Author     : 60192
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css">
        
        <script
         src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
         crossorigin="anonymous"></script>
        <script type="text/javascript"
                src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js">
                    
        </script>
    </head>
    <body>
        <main>
        <div class="background">
            <div class="text">
                <h1>Login</h1>
                <p>No Account? <a href="Register.html">Sign up</a></p>
            </div>
            <div class="box">
                <form class="form" action="DBLogin" method="post">
                    <input type="text" class="username" placeholder="Username" name=username required>
                    <input type="password" class="password" placeholder="Password" name=password required>
                    <br>${message}
                    <br>
                    <input type="submit" class="button" value="Login">
                </form>
            </div>
        </div>
        </main>
    </body>
    
    <script type="text/javascript">
 
    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
         
                password: "required"
            },
             
            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },
                 
                password: "Please enter password"
            }
        });
 
    });
</script>
    
</html>
