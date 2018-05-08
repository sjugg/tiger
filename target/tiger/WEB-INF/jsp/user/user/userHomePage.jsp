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
    
    <title>My JSP 'userHomePage.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/homePage.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
  		<div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header.html"></iframe>
		</div>
    	<div id="body">
    		<div id="homepage">
    			<div class="homepage_bg">
    				<img src="images/user/homepage_bg_img.png" alt="" />
    			</div>
    			<div class="homepage_content">
    				<div class="content">
    					<div class="top">
    						<div class="bg"></div>
    						<h1>个人档案</h1>
    						<div class="info">
    							<dl><dd>姓名：徐梦圆</dd><dd class="info_dd">所在地：江苏盐城</dd></dl>
    							<dl><dd>联系邮箱：1645612354@qq.com</dd><dd class="info_dd">性别：女</dd></dl>
    							<dl><dd class="info_null">喜欢风格：现代简约 北欧</dd></dl>
    							<dl><dd class="info_null info_me">个人简介：爱旅游，爱生活，喜欢在路上的自己.</dd></dl>
    						</div>
    					</div>
    					<div class="bottom">
    						<h1>多看看才知道自己想要什么家</h1>
    						<div class="img">
    							<img src="images/user/homepage_content_bottm_img.jpg" alt="" />
    						
    						</div>
    					</div>
    				
    				</div>
    			
    			</div>
    		</div>
    	
    	</div>
  </body>
</html>
