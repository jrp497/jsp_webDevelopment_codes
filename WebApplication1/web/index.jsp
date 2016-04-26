<%-- 
    Document   : index
    Created on : Jun 29, 2015, 5:28:04 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
                   int a;
                   int func(int c, int d){
                      return (c+d);
                   }
        %>
        
        <%for(int i=1; i<=5; i++){ %>
        <font size="<%=i%>">Hello World!</font>
        <br>
        <%}%>
    
    </body>
</html>
