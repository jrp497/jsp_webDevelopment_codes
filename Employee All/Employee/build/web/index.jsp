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
        <a href="formEmployee.jsp">Add New Employee</a>, <a href="changePassword.jsp">Change Password</a><br>
        <table border="2">
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Salary</th>
                <th>City</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            <%                ConfigManager cm = new ConfigManager();
                ResultSet rs = cm.getData("SELECT    `employee`.`Empno`    , `employee`.`Empname`    , `employee`.`Salary`    , `city`.`city_name`,`employee`.`emp_image` FROM    `city`    INNER JOIN `employee`         ON (`city`.`city_id` = `employee`.`City_id`);");
                while (rs.next()) {%>
            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(3)%></td>
                <td><%= rs.getString(4)%></td>
                <td><img src="employeeImages/<%= rs.getString(5)%>" height="100" width="100" /></td>
                <td><a href="formEmployee.jsp?eid=<%= rs.getString(1)%>">Edit</a> | <a href="deleteEmployee.jsp?eid=<%= rs.getString(1)%>">Delete</a></td>
            </tr>
            <%}
            %>
        </table>
    </body>
</html>
