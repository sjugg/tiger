/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-07 06:20:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
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
      out.write("\t<link href=\"css/user/basic.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"css/user/header.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
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
      out.write("    \t<div class=\"header\">\r\n");
      out.write("    \t\t<div class=\"header_top\">\r\n");
      out.write("    \t\t\t<div class=\"header_top_text\">\r\n");
      out.write("    \t\t\t\t<div class=\"header_top_text_left\">\r\n");
      out.write("    \t\t\t\t\t<p>当前城市：[");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${city}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("]</p>\r\n");
      out.write("    \t\t\t\t</div>\r\n");
      out.write("    \t\t\t\t<div class=\"header_top_text_right\">\r\n");
      out.write("    \t\t\t\t\t<ul class=\"main_ul\">\r\n");
      out.write("    \t\t\t\t\t\t<li class=\"main_li\">\r\n");
      out.write("    \t\t\t\t\t\t\t<a>客户服务</a>\r\n");
      out.write("    \t\t\t\t\t\t\t<ul class=\"service\">\r\n");
      out.write("    \t\t\t\t\t\t\t\t<li class=\"service_1\">\r\n");
      out.write("    \t\t\t\t\t\t\t\t\t<p>商务合作</p>\r\n");
      out.write("    \t\t\t\t\t\t\t\t\t<p>18068889986</p>\r\n");
      out.write("    \t\t\t\t\t\t\t\t</li>\r\n");
      out.write("    \t\t\t\t\t\t\t\t<li>在线客服</li>\r\n");
      out.write("    \t\t\t\t\t\t\t</ul>\r\n");
      out.write("    \t\t\t\t\t\t</li>\r\n");
      out.write("    \t\t\t\t\t\t\r\n");
      out.write("    \t\t\t\t\t\t");
      if (_jspx_meth_c_005fchoose_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("    \t\t\t\t\t</ul>\r\n");
      out.write("    \t\t\t\t</div>\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("    \t\t<div class=\"header_bottom\">\r\n");
      out.write("    \t\t\t<div class=\"header_bottom_left\">\r\n");
      out.write("    \t\t\t\t<img src=\"images/user/logo.png\" alt=\"\" />\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t\t<div class=\"header_bottom_right\">\r\n");
      out.write("    \t\t\t\t<ul class=\"nav-main\" id=\"nav-main_computer\">\r\n");
      out.write("\t\t\t\t        <li id=\"li-0\"><a href=\"index\" target=\"_parent\"> 首页</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-1\"><a href=\"decoration/decorationService\" >装修服务</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-2\"><a href=\"classiccase/classicCase\" >经典案例</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-3\"><a href=\"decoration/strategy\" >装修攻略</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-4\"><a href=\"homeDressScene/homeDressScene\" >家装现场</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-5\"><a href=\"/smartHome/smartHome\" >智能家居</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-5\"><a href=\"/material\" >材料品牌</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-6\"><a href=\"/joinUs\" >商家入驻</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav-main\" id=\"nav-main_mobile\" style=\"display:none\">\r\n");
      out.write("\t\t\t\t        <li id=\"li-0\"><a href=\"index\" target=\"_parent\"> 首页</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-1\"><a href=\"decoration/decorationService\" target=\"_parent\">装修服务</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-2\"><a href=\"classiccase/classicCase\" target=\"target_parent\">经典案例</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-3\"><a href=\"decoration/strategy\" target=\"target_parent\">装修攻略</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-4\"><a href=\"homeDressScene/homeDressScene\" target=\"target_parent\">家装现场</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-5\"><a href=\"/smartHome/smartHome\" target=\"target_parent\">智能家居</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-5\"><a href=\"/material\" target=\"target_parent\">材料品牌</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li id=\"li-6\"><a href=\"/joinUs\" target=\"target_parent\">商家入驻</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("    \t\t\t\r\n");
      out.write("    \t\t\t</div>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/user/header.js\"></script>\r\n");
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

  private boolean _jspx_meth_c_005fchoose_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:choose
    org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
    _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fchoose_005f0.setParent(null);
    int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
    if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t    \t\t\t\t\t\t");
        if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("\t    \t\t\t\t\t\t");
        if (_jspx_meth_c_005fotherwise_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("    \t\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fwhen_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
    // /WEB-INF/jsp/header.jsp(46,11) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty userInfo}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
    if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"main_li empty\"><a href=\"register\" >注册</a></li>\r\n");
        out.write("\t\t\t\t\t\t\t\t\t\t<li class=\"main_li empty\"><a href=\"tologin\" >登录</a></li>\r\n");
        out.write("\t    \t\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fotherwise_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:otherwise
    org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
    _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
    int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
    if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t    \t\t\t\t\t\t\t<li class=\"main_li\">\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t<a>我的消息</a>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t<ul class=\"message\">\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t\t<li>通知</li>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t</ul>\r\n");
        out.write("\t\t    \t\t\t\t\t\t</li>\r\n");
        out.write("\t\t    \t\t\t\t\t\t<li class=\"main_li\">\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t<a>欢迎：");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userInfo.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
        out.write("</a>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t<ul class=\"userinfo\">\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t\t<li><a href=\"user/userHomePage\"/>我的中心</li>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t\t<li><a href=\"user/logout?tel=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userInfo.tel}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
        out.write("\"/>退出</li>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t</ul>\r\n");
        out.write("\t\t    \t\t\t\t\t\t\t<span class=\"ico\"></span>\r\n");
        out.write("\t\t    \t\t\t\t\t\t</li>\r\n");
        out.write("\t    \t\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
    return false;
  }
}
