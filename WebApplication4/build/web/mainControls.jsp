<%-- 
    Document   : index
    Created on : Jul 18, 2015, 1:43:30 PM
    Author     : Jay Patel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Post Demo</title>
    </head>
    <body>
        <table>
            <form action="display.jsp" method ="get">
                <tr>
                    <td>Name: <input type="text" name="txtname" required="" placeholder="Enter Name"/> </td>
                    <td>Password: <input type="password" name="txtpassword" required="true"</td>
                </tr>
                <tr>
                    <td>Email: <input type="email" name="txtemail" </td>
                </tr>
                <tr>
                    <td>Number: <input type="number" name="txtnumber"</td>
                </tr>
                <tr>
                    <td>Date: <input type="date" name="txtdate"</td>
                </tr>
                <tr>
                    <td>Time: <input type="time"</td>
                </tr>
                <tr>
                    <td>Radio: 
                        <input type="radio" value="1" name="colg">FY
                        <input type="radio" value="2" name="colg">SY 
                        <input type="radio" value="3" name="colg">TY</td>
                </tr>
                <tr>
                    <td>Checkbox: 
                        <input type="checkbox">A
                        <input type="checkbox">B
                        <input type="checkbox">C
                    </td>
                </tr>
                <tr>
                    <td>Select: 
                        <select>
                            <option value="1">--Select--</option>
                            <option>India</option>
                            <option>USA</option>
                            <option>Canada</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/><input type="reset"/></td>
                </tr>
            </form>
        </table>
       
    </body>
</html>
