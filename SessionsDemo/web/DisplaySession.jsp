<%-- 
    Document   : DisplaySession
    Created on : Jul 18, 2015, 4:41:29 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Session</title>
    </head>
    <body>
        <h1>Name: <%= session.getAttribute("sname")%></h1>
    </body>
</html>
