<%@page import="java.sql.ResultSet"%>
<%@page import="Settings.ConfigManager"%>
<%
    ConfigManager cm = new ConfigManager();
    ResultSet rs = cm.getData("Select * from login where Username='" + request.getParameter("txtUsername") + "' and Password='" + request.getParameter("txtPassword") + "'");
    if(rs.next()){
        session.setAttribute("uname", request.getParameter("txtUsername"));
        response.sendRedirect("index.jsp");
    }else{
        response.sendRedirect("login.jsp");
    }
%>