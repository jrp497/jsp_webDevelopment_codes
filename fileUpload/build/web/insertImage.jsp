<%-- 
    Document   : insertImage
    Created on : Aug 4, 2015, 7:31:07 AM
    Author     : PC-2
--%>



<%@page import="Settings.ConfigManager"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    
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
                
            } else {
                String fname = item.getName();
                File f1 = new File(config.getServletContext().getRealPath("\\images\\" + fname));
                item.write(f1);
                ConfigManager cm = new ConfigManager();
                String rows = cm.setData("INSERT INTO `images`( `image`) VALUES ('" + fname + "')");
                if (rows.equals("1")) {
                    response.sendRedirect("display.jsp");
                } else {
                    out.println(rows);
                }
            }
        }
    }


%>