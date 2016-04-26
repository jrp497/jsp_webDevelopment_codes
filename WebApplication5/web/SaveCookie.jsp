<%
   /* Cookie c = new Cookie("uname", request.getParameter("txtname"));
    c.setMaxAge(60*60*24);
    response.addCookie(c);*/
    int a =123;
    session.setAttribute("uname", request.getParameter("txtname"));
    response.sendRedirect("ShowCookie.jsp?id=" + a + "&name=dhara" );
    %>