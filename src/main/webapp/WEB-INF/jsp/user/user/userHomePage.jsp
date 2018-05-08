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
    
    <title>云象装饰</title>
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
  		<!-- <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header.html"></iframe>
		</div> -->
		 <jsp:include   page="../../header.jsp" flush="true"/>
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
    							<dl><dd>姓名：${userInfo.name}</dd><dd class="info_dd">所在地省：${province}</dd></dl>
    							<dl><dd>所在地市：${city }</dd><dd class="info_dd">联系方式：${userInfo.tel}</dd></dl>
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
