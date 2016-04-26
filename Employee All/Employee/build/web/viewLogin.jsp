<%@page import="Settings.ConfigManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.getAttribute("uname") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table border="2">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Status</th>
            </tr>
            <%                ConfigManager cm = new ConfigManager();
                ResultSet rs = cm.getData("SELECT  * from login");
                while (rs.next()) {%>
            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td>
                    <%if (rs.getString(3).equals("0")) {%>
                    <a href="?id=<%= rs.getString(1)%>&status=<%= rs.getString(3)%>"><img src="red.png" height="30px" width="30px"/></a>
                        <%} else {%>
                    <a href="?id=<%= rs.getString(1)%>&status=<%= rs.getString(3)%>"><img src="green.png" height="30px" width="30px"/></a>
                    <%}
                    %>
                </td>
            </tr>
            <%}
            %>
        </table>
    </body>
</html>
<%
    if (request.getParameter("id") != null) {
        if (request.getParameter("status").equals("0")) {
            String rows = cm.setData("Update login set status=1 where Username='" + request.getParameter("id") + "'");
            out.print(rows);
        } else {
            String rows = cm.setData("Update login set status=0 where Username='" + request.getParameter("id") + "'");
            out.print(rows);
        }
        response.sendRedirect("viewLogin.jsp");
    }
%>