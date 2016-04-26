<%-- 
    Document   : display
    Created on : Aug 4, 2015, 6:48:21 AM
    Author     : PC-2
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Settings.ConfigManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>file no</th>
                <th>file name</th>
            </tr>
            <%
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/image", "root", "");
                Statement s = connection.createStatement();
                //ConfigManager cm = new ConfigManager();
                //ResultSet rs = cm.getData("SELECT * from images");
                  ResultSet rs = s.executeQuery("SELECT * from images");

                while (rs.next()) {%>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><img src="images/<%= rs.getString(2)%>" height="100" width="100" /></td>
            </tr>
        </table>
                
                <input type="submit" value="Upload other Image"> 
                <%}%>
    </body>
</html>
