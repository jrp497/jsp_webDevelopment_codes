<%-- 
    Document   : Display.jsp
    Created on : Aug 8, 2015, 1:27:28 PM
    Author     : Jay Patel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Service.Pojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%  
             
        Pojo p = (Pojo)session.getAttribute("pojo");
        ArrayList <Pojo> list = new ArrayList<Pojo>(); 
        list=(ArrayList<Pojo>)session.getAttribute("list");
    %>
    <body>
        <h1><%=list.get(0).getName()%></h1>
                <h2><%=p.getName()%></h2>

    </body>
</html>
