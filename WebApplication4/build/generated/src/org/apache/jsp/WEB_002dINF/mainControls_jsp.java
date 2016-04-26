package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainControls_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table>\n");
      out.write("            <form action=\"display.jsp\" method=\"post\">\n");
      out.write("                <tr>\n");
      out.write("                    <td> Name :</td>\n");
      out.write("                    <td><input type=\"text\" name=\"txtName\" min=\"2\" max=\"10\" required=\"true\" placeholder=\"Enter Name\"/></td>\n");
      out.write("                </tr>    \n");
      out.write("                <tr>\n");
      out.write("                    <td>  Password :</td>\n");
      out.write("                    <td><input type=\"password\" name=\"txtPassword\"/></td>\n");
      out.write("                </tr>    \n");
      out.write("                Email : <input type =\"email\" name=\"txtEmail\" required=\"\"/>\n");
      out.write("                Number : <input type=\"number\"/>\n");
      out.write("                Date : <input type =\"date\"/><br>\n");
      out.write("                Time : <input type=\"time\"/>\n");
      out.write("                Radio : \n");
      out.write("\n");
      out.write("                <input type=\"radio\" value=\"1\" name=\"clg\">FY<input type=\"radio\" value=\"2\" name=\"clg\">SY<input type=\"radio\" value=\"3\" name=\"clg\">TY<br>\n");
      out.write("\n");
      out.write("                Checkbox : <input type=\"checkbox\"/>abc<input type=\"checkbox\"/>bc<input type=\"checkbox\"/>c\n");
      out.write("\n");
      out.write("                Select : <select>\n");
      out.write("                    <option value=\"1\">--Select--</option>\n");
      out.write("                    <option>India</option>\n");
      out.write("                    <option>US</option>\n");
      out.write("                    <option>Canda</option>\n");
      out.write("                </select>\n");
      out.write("                <input type=\"submit\" value=\"Submit\"/>\n");
      out.write("                <input type=\"reset\"/>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
