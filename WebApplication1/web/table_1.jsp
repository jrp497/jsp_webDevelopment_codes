<%-- 
    Document   : table_1
    Created on : Jun 30, 2015, 4:27:30 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
        int x = 5;
        int mul(int a, int b){
                    return(a*b);
    }
    
    %>
    
    <body>
        <%for(int i=1; i<=10; i++ ){%>
        <table border="2">
            <tr height="10%">
                <td width="10%"><%=x%> * <%=i%> </td>
                
                <td width="10%"><%=mul(x,i)%></td>
            </tr>
        </table> 
            <%}%>
            
    </body>
</html>
