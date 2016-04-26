<%-- 
    Document   : HtmlControls
    Created on : 06-Jul-2015, 17:00:26
    Author     : Dhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <form action="display.jsp" method="post">
                <tr>
                    <td> Name :</td>
                    <td><input type="text" name="txtName" min="2" max="10" required="true" placeholder="Enter Name"/></td>
                </tr>    
                <tr>
                    <td>  Password :</td>
                    <td><input type="password" name="txtPassword"/></td>
                </tr>    
                Email : <input type ="email" name="txtEmail" required=""/>
                Number : <input type="number"/>
                Date : <input type ="date"/><br>
                Time : <input type="time"/>
                Radio : 

                <input type="radio" value="1" name="clg">FY<input type="radio" value="2" name="clg">SY<input type="radio" value="3" name="clg">TY<br>

                Checkbox : <input type="checkbox"/>abc<input type="checkbox"/>bc<input type="checkbox"/>c

                Select : <select>
                    <option value="1">--Select--</option>
                    <option>India</option>
                    <option>US</option>
                    <option>Canda</option>
                </select>
                <input type="submit" value="Submit"/>
                <input type="reset"/>
            </form>

        </table>


    </body>
</html>
