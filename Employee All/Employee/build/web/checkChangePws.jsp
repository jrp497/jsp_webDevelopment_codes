<%@page import="java.sql.ResultSet"%>
<%@page import="Settings.ConfigManager"%>
<%
    ConfigManager cm = new ConfigManager();
    ResultSet rs = cm.getData("Select * from login where Username='" + session.getAttribute("uname") + "'");
    if (rs.next()) {
        if (request.getParameter("txtOld").equals(rs.getString(2))) {
            if (request.getParameter("txtNew").equals(request.getParameter("txtCNew"))) {
                String rows = cm.setData("Update login set Password='" + request.getParameter("txtNew") + "' where Username='" + session.getAttribute("uname") + "'");
                if (rows.equals("1")) {
                    response.sendRedirect("index.jsp");
                } else {
                    out.print(rows);
                }
            } else {
                response.sendRedirect("changePassword.jsp");
            }
        } else {
            response.sendRedirect("changePassword.jsp");
        }
    } else {
        response.sendRedirect("changePassword.jsp");
    }

%>