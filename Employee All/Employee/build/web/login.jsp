<%-- 
    Document   : login
    Created on : 7 Aug, 2015, 6:55:37 PM
    Author     : DHARA-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Login</h2>
        <form method="post" action="checkLogin.jsp">
            <input type="text" name="txtUsername" placeholder="Enter Username" required="true"/><br><br>
            <input type="password" name="txtPassword" placeholder="Enter Password" required="true"/><br><br>
            <input type="submit" value="Submit"/>
        </form>
        
        <a href="forgotpassword.jsp">Forgot Password?</a>
    </body>
</html>
