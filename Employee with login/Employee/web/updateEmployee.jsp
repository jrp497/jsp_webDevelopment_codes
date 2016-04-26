<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb","root","");
    Statement s = cn.createStatement();
    int rows = s.executeUpdate("Update Employee set Empname='" + request.getParameter("txtName") + "',Salary=" + request.getParameter("txtSalary") + " where Empno=" + request.getParameter("eid"));
    if(rows==1){
        response.sendRedirect("index.jsp");
    }else{
        out.println("Error");
    }

%>