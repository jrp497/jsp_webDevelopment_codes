

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="SaveCookie.jsp" method="post">
            Name : <input type="text" name="txtname" value="abc"/>
            <input type="hidden" name="id" value="1234"/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
