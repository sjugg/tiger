/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-10 01:03:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.user.decoration;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class decorationService_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>云象装饰</title>\r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\"/>\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\"/>    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\"/>\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/basic.css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/user/decorationService.css\"/>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/jquery-1.8.3.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("js/jquery-1.9.1.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t<script language=\"JavaScript\" src=\"");
      out.print(basePath);
      out.write("/js/basic.js\" type=\"text/javascript\"></script>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("<!--   <div id=\"header\">\r\n");
      out.write("\t\t\t<iframe allowTransparency=\"true\" frameborder=\"no\" border=\"0\" name=\"header_frame\" scrolling=\"no\" width=100% height=210 src=\"header\"></iframe>\r\n");
      out.write("\t\t</div>  -->\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../../header.jsp", out, true);
      out.write("\r\n");
      out.write("     <div id=\"body\">\r\n");
      out.write("     \t<div id=\"decorationService_top\">\r\n");
      out.write("     \t\t<img src=\"images/user/decorationService_top_photo_img.jpg\"/>\r\n");
      out.write("     \t</div>\r\n");
      out.write("     \t<div id=\"center\">\r\n");
      out.write("     \t\t<div id=\"decorationService\">\r\n");
      out.write("     \t\t\t<div class=\"decorationService_1\">\r\n");
      out.write("     \t\t\t\t<div class=\"decorationService_1_title\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"line line_1\"><p></p></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"text\">装修服务</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"line line_2\"><p></p></div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>装修复杂，我们为您提供</p>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t<div class=\"decorationService_1_bottom\">\r\n");
      out.write("   \t\t\t\t\t\t<div class=\"body\">\r\n");
      out.write("   \t\t\t\t\t\t\t<ul>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_1.jpg\"/>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<div class=\"text text_1\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<p class=\"title\">水电改造</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t\t<p class=\"info\">水电改造强电线头连接完毕，弱电线布线到位，水暖管道的铺设完成即可启动验收程序。</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text  text_2\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<p class=\"title\">防水施工</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p class=\"info\">沐浴处墙面防水高度距地2000mm;其余墙面防水高度距地300mm；前面螨刷，不小于24小时的闭水试验。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_2.jpg\"/>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"line_2\"></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_3.jpg\"/>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text text_3\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<p class=\"title\">瓦工项目</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p class=\"info\">地面水泥找平；厨、卫墙地砖铺贴；客餐厅、阳台地砖铺贴；厨、为包立管；地漏安装。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text text_4\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<p class=\"title\">木工项目</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p class=\"info\">顶角线安装；<br />门洞门框修正修方。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_4.jpg\"/>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_5.jpg\"/>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"line_5\"></div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text text_5\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<p class=\"title\">油工项目</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p class=\"info\">为墙面漆涂料；<br />墙面用腻子找平，批刮后再打磨。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<li>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<div class=\"text text_6\">\r\n");
      out.write("   \t\t\t\t\t\t\t\t\t<p class=\"title\">安装项目</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<p class=\"info\">开关插座面板材料安装；<br />吸顶灯及其他材料由业主提供。</p>\r\n");
      out.write("   \t\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t\t<img src=\"images/user/decorationService_1_bottom_img_6.jpg\"/>\r\n");
      out.write("   \t\t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t\t</ul>\r\n");
      out.write("   \t\t\t\t\t\t\r\n");
      out.write("   \t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("     \t\t\t</div>\r\n");
      out.write("     \t\t\t<div class=\"decorationService_2\">\r\n");
      out.write("     \t\t\t\t<div class=\"decorationService_2_title\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"top\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"line line_1\"><p></p></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"text\">用心服务每个家</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"line line_2\"><p></p></div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"bottom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<p>用心服务 开启你的梦想家</p>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t<div class=\"decorationService_2_bottom\">\r\n");
      out.write("   \t\t\t\t\t\t<ul>\r\n");
      out.write("   \t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationService_2_bottom_img_1.png\" alt=\"\" /></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"info\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<h2>用心</h2>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>标准化</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>全程0增项</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>客服在线</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationService_2_bottom_img_2.png\" alt=\"\" /></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"info\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<h2>一站式</h2>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>一站式家装服务</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>款式风格可选</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>个性化风格</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t\t<li>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"img\"><img src=\"images/user/decorationService_2_bottom_img_3.png\" alt=\"\" /></div>\r\n");
      out.write("\t   \t\t\t\t\t\t\t<div class=\"info\">\r\n");
      out.write("\t   \t\t\t\t\t\t\t\t<h2>便捷</h2>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>在线预约</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>免费设计</p>\r\n");
      out.write("\t\t   \t\t\t\t\t\t\t<p>整装交付</p>\r\n");
      out.write("\t   \t\t\t\t\t\t\t</div>\r\n");
      out.write("   \t\t\t\t\t\t\t</li>\r\n");
      out.write("   \t\t\t\t\t\t</ul>\r\n");
      out.write("   \t\t\t\t\t</div>\r\n");
      out.write("     \t\t\t</div>\r\n");
      out.write("     \t\t</div>\r\n");
      out.write("     \t</div>\r\n");
      out.write("     \t<div id=\"decorationService_bottom\">\r\n");
      out.write("     \t\t<img src=\"images/user/decorationService_bottom_photo_img.jpg\"/>\r\n");
      out.write("     \t</div>\r\n");
      out.write("     </div>\r\n");
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
