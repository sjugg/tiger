/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-04 07:27:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.user.decoration;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class decorationSupport_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");

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
      out.write("    \r\n");
      out.write("    <title>My JSP 'decorationSupport.jsp' starting page</title>\r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\"/>    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\"/>\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/basic.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/decorationSupport.css\"/>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-1.8.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("js/jquery-1.9.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/basic.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/user/decorationSupport.js\" type=\"text/javascript\"></script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("  \t\t <div id=\"header\">\r\n");
      out.write("\t\t<iframe allowTransparency=\"true\" frameborder=\"no\" border=\"0\"\r\n");
      out.write("\t\t\tname=\"footer_frame\" scrolling=\"no\" width=100% height=110\r\n");
      out.write("\t\t\tsrc=\"header\"></iframe>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("   \t\t<div id=\"body\">\r\n");
      out.write("   \t\t\t<div id=\"decorationSupport_top\">\r\n");
      out.write("   \t\t\t\t<img src=\"images/user/decorationSupport_top_img.jpg\" alt=\"\" />\r\n");
      out.write("   \t\t\t</div>\r\n");
      out.write("   \t\t\t<div id=\"center\">\r\n");
      out.write("   \t\t\t\t<div id=\"decorationSupport_body\">\r\n");
      out.write("   \t\t\t\t\t<div class=\"decorationSupport_body_1\">\r\n");
      out.write("   \t\t\t\t\t\t<div class=\"decorationSupport_body_1_title\">\r\n");
      out.write("   \t\t\t\t\t\t\t<div class=\"top\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"line line_1\"><p></p></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text\">正规公司</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"line line_2\"><p></p></div>\r\n");
      out.write("   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t<div class=\"bottom\">\r\n");
      out.write("   \t\t\t\t\t\t\t<p>4大保障为你提供无忧虑服务</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t<div class=\"decorationSupport_body_1_bottom\">\r\n");
      out.write("   \t\t\t\t\t\t\t<img src=\"images/user/decorationSupport_body_1_bottom_img.jpg\" alt=\"\" />\r\n");
      out.write("   \t\t\t\t\t\t\t<div class=\"text\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t<h1>云豹的装修资质</h1>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<p>云豹装饰的各项装修资质、上岗员工及信誉口碑都经过仔细考量，装修经验充足，施工质量有保障。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t<div class=\"decorationSupport_body_2\">\r\n");
      out.write("   \t\t\t\t\t\t\t<ul>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_2_img_1.png\" alt=\"\" /></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"text\">设计图纸规范化，设计师服务到位，图纸精确，根据您的户型、风格和选材，为您“量体裁衣”。</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li class=\"li-2\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_2_img_2.png\" alt=\"\" /></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"text\">正品材料，品质保障，杜绝装修污染，使用的装修材料都是健康、环保的正品装修材料，拒绝假冒伪劣装修材料进场，正品的、装修材料也杜绝了因装修出现的污染。</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_2_img_3.png\" alt=\"\" /></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<div class=\"text\">施工规范化按照国家现行《住宅装饰装修工程施工规范》，预算报价一步到位，每一项价格都很透明，拒绝恶意新增项，杜绝装修陷阱！全程监管有错必究。</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t</ul>\r\n");
      out.write("   \t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t</div>\r\n");
      out.write("   \t\t\t</div>\r\n");
      out.write("   \t\t</div>\r\n");
      out.write("   \t\t<div class=\"decorationSupport_body_3\">\r\n");
      out.write("\t   \t\t\t\t\t\t<div class=\"decorationSupport_body_3_title\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"top\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<div class=\"line line_1\"><p></p></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<div class=\"text\">服务保障</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<div class=\"line line_2\"><p></p></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"bottom\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p>品质服务，为你的装修保驾护航</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t<div class=\"decorationSupport_body_3_bottom\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\r\n");
      out.write("\t   \t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_3_bottom_img_1.png\" alt=\"\" /></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h1>品质服务</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>正规公司 品质优选</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<li class=\"li-2\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_3_bottom_img_2.png\" alt=\"\" /></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h1>以诚待人</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>抵制虚假 真材实料</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<li class=\"li-3\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_3_bottom_img_3.png\" alt=\"\" /></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h1>以信为本</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>诚信可靠 信任首选</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationSupport_body_3_bottom_img_4.png\" alt=\"\" /></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t\t<div class=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h1>免费监理</h1>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>全程监管 有错必究</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\r\n");
      out.write("\t   \t\t\t\t\t\t</div>\r\n");
      out.write("\t   \t\t\t\t\t\t<div class=\"decorationSupport_body_3_bg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/user/decorationSupport_body_3_bottom.png\" alt=\"\" />\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("   \t\t\r\n");
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