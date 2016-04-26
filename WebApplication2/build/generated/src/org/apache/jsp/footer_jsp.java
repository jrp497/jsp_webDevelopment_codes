package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div class=\"footer\">\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<h3>NEWSLETTER</h3>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\tNulla porttitor vulputate elit, trist ique malesuada sem.\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t\t<form action=\"index.html\">\n");
      out.write("\t\t\t\t\t<input type=\"text\" value=\"Email Address\" onblur=\"this.value=!this.value?'Email Address':this.value;\" onfocus=\"this.select()\" onclick=\"this.value='';\">\n");
      out.write("                                        <input type=\"submit\" value=\"Get\">\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<h4>LATEST BLOG</h4>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"blog.html\">Phasellus parea ut di tincidunt blandit nisi ut pellentesque.</a>\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t<span>11/07/2011</span>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"blog.html\">Donec dictum semper augue, ut consectetur magna posuere eget.</a>\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t<span>11/03/2011</span>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"blog.html\">Cum sociis natoque penatibus et magnis dis parturient.</a>\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t<span>11/27/2011</span>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"connect\">\n");
      out.write("\t\t\t\t<h4>FOLLOW US:</h4>\n");
      out.write("\t\t\t\t<a href=\"http://freewebsitetemplates.com/go/facebook/\" class=\"facebook\">Facebook</a> <a href=\"http://freewebsitetemplates.com/go/twitter/\" class=\"twitter\">Twitter</a> <a href=\"http://freewebsitetemplates.com/go/googleplus/\" class=\"google\">Google+</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<p>\n");
      out.write("\t\t\t\tSummer Camp &#169; 2011 | All Rights Reserved\n");
      out.write("\t\t\t</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
