<%-- 
    Document   : formEmployee
    Created on : 22-Jul-2015, 19:28:30
    Author     : Dhara
--%>

<%@page import="Settings.ConfigManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("eid") == null) {%>
        <form action="insertEmployee.jsp" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txtName" placeholder="Enter Name" required="true" /></td>
                </tr>
                <tr>
                    <td>Salary :</td>
                    <td><input type="number" name="txtSalary" placeholder="Enter Salary" required="true"/></td>
                </tr>

                <tr>
                    <td>City :</td>
                    <td>
                        <select name="selCity">
                            <option>--Select City--</option>
                            <%
                                ConfigManager cm = new ConfigManager();
                                ResultSet rs = cm.getData("Select * from city");
                                while (rs.next()) {%>
                            <option value="<%= rs.getString(1)%>"><%= rs.getString(2)%></option>  
                            <%}
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td><input type="file" name="txtimage" required="true"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Insert"/></td>
                    <td></td>
                </tr>
            </table>
        </form>  
        <%} else {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb", "root", "");
            Statement s = cn.createStatement();
            ResultSet rs = s.executeQuery("Select * from Employee where Empno=" + request.getParameter("eid"));
            rs.next();
        %>
        <form action="updateEmployee.jsp" method="get">
            <input type="hidden" name="eid" value="<%= rs.getString(1)%>"/>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txtName" placeholder="Enter Name" required="true" value="<%= rs.getString(2)%>" /></td>
                </tr>
                <tr>
                    <td>Salary :</td>
                    <td><input type="number" name="txtSalary" placeholder="Enter Salary" required="true" value="<%= rs.getString(3)%>"/></td>
                </tr>
                <tr>
                    <td>City :</td>
                    <td>
                        <select name="selCity">
                            <option>--Select City--</option>
                            <%
                                ConfigManager cm1 = new ConfigManager();
                                ResultSet rs1 = cm1.getData("Select * from city");
                                while (rs1.next()) {%>
                            <option value="<%= rs1.getString(1)%>" <%= rs1.getString(1).equals(rs.getString(4)) ? "selected" : ""%>><%= rs1.getString(2)%></option>  
                            <%}
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Update"/></td>
                    <td></td>
                </tr>
            </table>
        </form>
        <%}
        %>

    </body>
</html>
