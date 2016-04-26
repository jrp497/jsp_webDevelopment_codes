<%-- 
    Document   : index.jsp
    Created on : Aug 8, 2015, 1:01:18 PM
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
        
        <form action="<%=request.getContextPath()%>/ServletDemo" method="get">
        
            <table>
                <tr>
                    <td>Name: <input type="text" name="txtname" required="" placeholder="Enter Name"/> </td>
                </tr>
               
                <tr>
                    <td>Number: <input type="number" name="txtnumber"</td>
                </tr>
                <tr>
                    <td>Date: <input type="date" name="txtdate"</td>
                </tr>
              
                <tr>
                    <td>Gender: 
                        <input type="radio" value="1" name="colg">Male
                        <input type="radio" value="2" name="colg">Female 
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"</td>
                </tr>
            </table>
                
        </form>
        
    </body>
</html>
