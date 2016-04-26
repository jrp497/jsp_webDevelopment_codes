<%-- 
    Document   : ExecuteCookie
    Created on : Jul 18, 2015, 3:47:31 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Execute Cookie</title>
    </head>
    <% String value=""; %>
    
    
    <body>
        <%
                    
            Cookie[] cookies = request.getCookies();
            for(int i = 0; i < cookies.length; i++) { 
            Cookie cookie1 = cookies[i];
            if (cookie1.getName().equals("uname")) {
                
                value = cookie1.getValue();
            }
        }  
        %>
        
        <h1>Name: <%= request.getParameter("txtname") %> <%= value %></h1>
    </body>
</html>
