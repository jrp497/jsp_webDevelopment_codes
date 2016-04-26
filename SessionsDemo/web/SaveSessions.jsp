<%
    int a = 123;
    session.setAttribute("sname",request.getParameter("txtname"));
    response.sendRedirect("DisplaySession.jsp?id="+a+"&name=jay");
%>