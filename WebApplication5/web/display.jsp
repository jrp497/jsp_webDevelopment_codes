<%-- 
    Document   : display
    Created on : 06-Jul-2015, 17:17:26
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
        <%
            String name = request.getParameter("txtName");
            %>
        <h1><%=request.getParameter("txtName")  %></h1>
    </body>
</html>
