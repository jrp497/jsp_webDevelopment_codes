<%-- 
    Document   : index
    Created on : Aug 4, 2015, 6:40:24 AM
    Author     : PC-2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertImage.jsp" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><input type="file" name="image" required=""></td>
                    </tr>
                     <tr>
                    <td><input type="submit" value="Insert"/></td>
                </tr>
                </table>
            </form>
    </body>
</html>
