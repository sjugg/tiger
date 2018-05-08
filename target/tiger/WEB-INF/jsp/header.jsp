<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>"/>
    
    <title>My JSP 'header.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/user/basic.css" rel="stylesheet" type="text/css" />
	<link href="css/user/header.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
    	<div class="header">
    		<div class="header_top">
    			<div class="header_top_text">
    				<div class="header_top_text_left">
    					<p>当前城市：[盐城]</p>
    				</div>
    				<div class="header_top_text_right">
    					<ul class="main_ul">
    						<li class="main_li">
    							<a>客户服务</a>
    							<ul class="service">
    								<li class="service_1">
    									<p>商务合作</p>
    									<p>18068889986</p>
    								</li>
    								<li>在线客服</li>
    							</ul>
    						</li>
    						
    						<c:choose>
	    						<c:when test="${empty userSession}">
										<li class="main_li empty"><a href="/register" target="_blank">注册</a></li>
										<li class="main_li empty"><a href="/login" target="_blank">登录</a></li>
	    						</c:when>
	    						<c:otherwise>
	    							<li class="main_li">
		    							<a>我的消息</a>
		    							<ul class="message">
		    								<li>通知</li>
		    							</ul>
		    						</li>
		    						<li class="main_li">
		    							<a>用户名</a>
		    							<ul class="userinfo">
		    								<li><a href="user/userInfo"></a>我的中心</li>
		    								<li>退出</li>
		    							</ul>
		    							<span class="ico"></span>
		    						</li>
	    						</c:otherwise>
    						</c:choose>
    					</ul>
    				</div>
    			</div>
    		</div>
    		<div class="header_bottom">
    			<div class="header_bottom_left">
    				<img src="images/user/logo.png" alt="" />
    			</div>
    			<div class="header_bottom_right">
    				<ul class="nav-main" id="nav-main_computer">
				        <li id="li-0"><a href="index" target="_parent"> 首页</a></li>
						<li id="li-1"><a href="decoration/decorationService" target="target_parent">装修服务</a></li>
						<li id="li-2"><a href="classiccase/classicCase" target="target_parent">经典案例</a></li>
						<li id="li-3"><a href="decoration/strategy" target="target_parent">装修攻略</a></li>
						<li id="li-4"><a href="homeDressScene/homeDressScene" target="target_parent">家装现场</a></li>
						<li id="li-5"><a href="/smartHome/smartHome" target="target_parent">智能家居</a></li>
						<li id="li-5"><a href="/material" target="target_parent">材料品牌</a></li>
						<li id="li-6"><a href="/joinUs" target="target_parent">商家入驻</a></li>
					</ul>
					<ul class="nav-main" id="nav-main_mobile" style="display:none">
				        <li id="li-0"><a href="index" target="_parent"> 首页</a></li>
						<li id="li-1"><a href="decoration/decorationService" target="_parent">装修服务</a></li>
						<li id="li-2"><a href="classiccase/classicCase" target="target_parent">经典案例</a></li>
						<li id="li-3"><a href="decoration/strategy" target="target_parent">装修攻略</a></li>
						<li id="li-4"><a href="homeDressScene/homeDressScene" target="target_parent">家装现场</a></li>
						<li id="li-5"><a href="/smartHome/smartHome" target="target_parent">智能家居</a></li>
						<li id="li-5"><a href="/material" target="target_parent">材料品牌</a></li>
						<li id="li-6"><a href="/joinUs" target="target_parent">商家入驻</a></li>
					</ul>
    			
    			</div>
    		</div>
		</div>
<script type="text/javascript" src="js/user/header.js"></script>
  </body>
</html>
