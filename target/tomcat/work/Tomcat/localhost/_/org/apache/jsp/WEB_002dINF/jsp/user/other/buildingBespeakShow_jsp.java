/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-09 07:40:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.user.other;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class buildingBespeakShow_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\"/>\r\n");
      out.write("    <title>My JSP 'buildingBespeakShow.jsp' starting page</title>\r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\"/>    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\"/>\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/basic.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/index.css\"/>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-1.8.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("js/jquery-1.9.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" charset=\"utf-8\" src=\"js/jquery.leanModal.min.js\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/user/index.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" language=\"JavaScript\">\r\n");
      out.write("\t\r\n");
      out.write("\t</script>\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("    \t<div class=\"buildingBespeakShow\">\r\n");
      out.write("    \t\t<div class=\"buildingBespeakShow_top\"> \r\n");
      out.write("    \t\t\t<p class=\"title\">预约参观</p>\r\n");
      out.write("    \t\t\t<p class=\"info\">预约参观家装工地 品质家装触手可得</p>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t\t<div class=\"buildingBespeakShow_bottom\"> \r\n");
      out.write("    \t\t\t<form action=\"/BuildingBespeak\" method=\"post\" onsubmit=\"return checkBuildingBespeakShow()\">\r\n");
      out.write("    \t\t\t\t<input type=\"hidden\" name=\"buildingbespeakBuildingid\" id=\"buildingbespeakId\"/>\r\n");
      out.write("    \t\t\t\t<div class=\"text\"><p>您的称呼</p><p><input type=\"text\" name=\"buildingbespeakUsername\" id=\"userName\" value=\"请输入您的称呼\" onFocus=\"if (this.value =='请输入您的称呼') {this.value = '';}\" onBlur=\"if (this.value == '') {this.value = '请输入您的称呼';}\"/></p></div>\r\n");
      out.write("    \t\t\t\t<div class=\"text\"><p>您的电话</p><p><input type=\"text\" name=\"buildingbespeakTel\" id=\"tel\" value=\"请输入您的手机号码\" onFocus=\"if (this.value =='请输入您的手机号码') {this.value = '';}\" onBlur=\"if (this.value == '') {this.value = '请输入您的手机号码';}\"/></p></div>\r\n");
      out.write("    \t\t\t\t<div class=\"submit\"><p><input type=\"submit\"  value=\"立即预约\"/></p></div>\r\n");
      out.write("    \t\t\t</form>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t\t<div class=\"buildingBespeakShow_photo\"> \r\n");
      out.write("    \t\t<img alt=\"\" src=\"images/user/index_bespeak_model_ico.png\"/>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t</div>\r\n");
      out.write("  </body>\r\n");
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
