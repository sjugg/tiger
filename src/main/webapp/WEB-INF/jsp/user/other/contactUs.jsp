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
    
    <title>My JSP 'contactUs.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/contactUs.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
    <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
		</div>
		
		<div id="body">
		<div id="contactus_photo">
			<img src="images/user/contactus_photo_img.jpg" alt="" />
		</div>
		<div id="center">
			<div id="contactus_adress">
				<h1>查看地图</h1>
				<img src="images/user/contactus_address_img.jpg" alt="" />
				<ul>
					<li>
						<p>公司地址：</p>
						<p>盐城市亭湖区希望大道58号</p>
						<p>绿地商务城蓝海商务楼12-4#803室</p>
					</li>
					<li>
						<p>联系方式：</p>
						<p>0515-88878168</p>
						<p>18066165268</p>
					</li>
					<li>
						<p>工作邮箱：</p>
						<p>lbr@yuhedream.com</p>
					</li>
				</ul>
			</div>
		</div>
		</div>
  </body>
</html>
