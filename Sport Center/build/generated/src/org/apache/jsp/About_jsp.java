package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>AIDIEL SPORT CENTRE</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/navbar-fixed-top.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/bootstrap-toggle.min.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: yellow\">\n");
      out.write("\n");
      out.write("    <!-- Fixed navbar -->\n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">AIDIEL SPORT CENTRE</a>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("          <ul class=\"nav navbar-nav\">\n");
      out.write("            <li class=\"active\"><a href=\"Homepage.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"About.jsp\">About</a></li>\n");
      out.write("            <li><a href=\"Contact.jsp\">Contact</a></li>\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\"><span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"#\">My Profile</a></li>\n");
      out.write("                <li><a href=\"#\">My Booking</a></li>\n");
      out.write("                <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("                <li class=\"dropdown-header\"></li>\n");
      out.write("                <li><a href=\"#\">Sign Out</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div><!--/.nav-collapse -->\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <!-- Main component for a primary marketing message or call to action -->\n");
      out.write("      <div class=\"jumbotron\">\n");
      out.write("        <h1></h1>\n");
      out.write("        <p>This sports centre was built in 2023 and still stands to this day. The name of this center is taken from the name of its founder himself, Datuk Dr Muhammad Aidiel Bin Jamallullail.</p>\n");
      out.write("        <br><br><br>\n");
      out.write("        <p><i><b>\"I feel that people need to have a good healthy life, therefore I come up with the idea to built this sport centre so that many people will have more fun to work out their body.\" - Datuk Dr Muhammad Aidiel</b></i></p>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <script src=\"js/jquery-1.11.3.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap-toggle.min.js\"></script>      \n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
