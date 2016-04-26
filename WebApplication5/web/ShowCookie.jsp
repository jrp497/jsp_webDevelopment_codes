<%-- 
    Document   : ShowCookie
    Created on : 08-Jul-2015, 17:24:24
    Author     : Dhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            <h1>WelCome , <%= session.getAttribute("uname") %></h1>
    </body>
</html>
