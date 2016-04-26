<%-- 
    Document   : forgotpassword
    Created on : 10 Aug, 2015, 7:19:56 PM
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
        <h2>Forgot Password?</h2>
        <form method="post" action="checkForgotPws.jsp">
            <input type="email" name="txtEmail" required=""/>
            <input type="submit" value="Send Mail"/>
        </form>
    </body>
</html>

