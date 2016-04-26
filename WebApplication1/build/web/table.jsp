<%-- 
    Document   : table
    Created on : Jun 29, 2015, 6:53:05 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .x1{
            width:50px;
            background-color:black; 
        }
        .x2{
            width:50px;
            background-color:white; 
        }
    </style>
    <%
        String a = "black";
        String b = "white";
        
    %>
    <body>
        <%for(int i=0;i<8;i++){%>
        <%if(i%2==0){%>
        <table border="1">
            <tr height="50">
                
                    <%for(int j=0;j<4;j++){%>
                    <td width="50" bgcolor="<%=b%>"></td>
                    <td width="50" bgcolor="<%=a%>"></td>
                    <%}%>
            </tr>
        </table>
            <%}else{%>
            
            <table border="1">
            <tr height="50">
                
                    <%for(int j=0;j<4;j++){%>
                    <td class="x1"></td>
                    <td class="x2"></td>
                    <%}%>
            </tr>
            </table>
            <%}%>
            
        <%}%>
    </body>
</html>
