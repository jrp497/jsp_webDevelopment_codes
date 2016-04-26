<%@page import="java.sql.ResultSet"%>
<%@page import="Settings.ConfigManager"%>
<%
    ConfigManager cm = new ConfigManager();
    ResultSet rs = cm.getData("Select * from login where Username='" + request.getParameter("txtEmail") + "'");
    if(rs.next()){
        cm.sendMail(rs.getString(1),"Login Details", "The following are the login details <br> Username : " + rs.getString(1) + " <br> Password :" + rs.getString(2));
    }else{
        response.sendRedirect("forgotpassword.jsp");
                
    }
            
%>