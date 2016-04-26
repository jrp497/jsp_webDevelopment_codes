<%      Cookie c = new Cookie("uname",request.getParameter("txtname"));
        c.setMaxAge(24*60*60);
        response.addCookie(c);
        response.sendRedirect("ExecuteCookie.jsp");
%>
