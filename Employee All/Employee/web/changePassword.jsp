<%-- 
    Document   : changePassword
    Created on : 11 Aug, 2015, 7:11:51 PM
    Author     : DHARA-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="checkChangePws.jsp">
            <input type="password" name="txtOld" /><br>
            <input type="password" name="txtNew" /><br>
            <input type="password" name="txtCNew" /><br>
            <input type="submit" value="Change Password"/>
        </form>
    </body>
</html>
