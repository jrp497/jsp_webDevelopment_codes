<%-- 
    Document   : display
    Created on : Jul 18, 2015, 2:18:26 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Post</title>
    </head>
    <body>
        <% String date = request.getParameter("txtdate");%>
        <h1><%=request.getParameter("txtname")%></h1>
        <h2><%=date%></h2>
    </body>
</html>
