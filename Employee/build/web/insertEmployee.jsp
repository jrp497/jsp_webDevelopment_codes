<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="Settings.ConfigManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    String ename = "", salary = "", city = "";
    if (!isMultipart) {
        out.print("Error");
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
        List items = null;
        items = fileUpload.parseRequest(request);
        Iterator iterator = items.iterator();
        while (iterator.hasNext()) {
            FileItem item = (FileItem) iterator.next();
            if (item.isFormField()) {
                if (item.getFieldName().equals("txtName")) {
                    ename = item.getString();
                } else if (item.getFieldName().equals("txtSalary")) {
                    salary = item.getString();
                } else if (item.getFieldName().equals("selCity")) {
                    city = item.getString();
                }
            } else {
                String fname = item.getName();
                File f1 = new File(config.getServletContext().getRealPath("\\employeeImages\\" + fname));
                item.write(f1);
                ConfigManager cm = new ConfigManager();
                String rows = cm.setData("INSERT INTO `employee`( `Empname`, `Salary`,`City_id`,`emp_image`) VALUES ('" + ename + "'," + salary + "," + city + ",'" + fname + "')");
                out.println("INSERT INTO `employee`( `Empname`, `Salary`,`City_id`,`emp_image`) VALUES ('" + ename + "'," + salary + "," + city + ",'" + fname + "')");
                if (rows.equals("1")) {
                    response.sendRedirect("index.jsp");
                } else {
                    out.println(rows);
                }
            }
        }
    }


%>