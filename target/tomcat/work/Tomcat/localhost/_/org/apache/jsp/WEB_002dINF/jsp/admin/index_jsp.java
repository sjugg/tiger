/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-09 07:41:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("   \r\n");
      out.write("    <title>后台首页</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-1.8.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("js/jquery-1.9.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/admin/index.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(basePath);
      out.write("/css/admin/index.css\">\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write(" <!--  --> <frameset rows=\"70,*\" cols=\"*\" frameborder=\"no\" border=\"0\"\r\n");
      out.write("\t\tframespacing=\"0\" style=\"min-width:1300px;\">\r\n");
      out.write("\t\t<frame src=\"admin/top\" name=\"topFrame\" scrolling=\"no\">\r\n");
      out.write("\t\t<frameset cols=\"180,*\" frameborder=\"no\" border=\"0\" framespacing=\"0\">\r\n");
      out.write("\t\t\t<frame src=\"admin/menu\" noresize name=\"menu\"\r\n");
      out.write("\t\t\t\tscrolling=\"yes\">\r\n");
      out.write("\t\t\t<frame src=\"");
      out.print(path );
      out.write("/admin/sysPro\" noresize name=\"main\"\r\n");
      out.write("\t\t\t\tscrolling=\"yes\">\r\n");
      out.write("\t\t</frameset>\r\n");
      out.write("\t</frameset>\r\n");
      out.write("\t<noframes>\r\n");
      out.write("\t\t<body>您的浏览器不支持框架！\r\n");
      out.write("\t\t</body>\r\n");
      out.write("\t</noframes>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}