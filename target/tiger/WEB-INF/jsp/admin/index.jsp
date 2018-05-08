<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>后台首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/admin/index.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/admin/index.css">
  </head>
  
 <!--  --> <frameset rows="70,*" cols="*" frameborder="no" border="0"
		framespacing="0" style="min-width:1300px;">
		<frame src="admin/top" name="topFrame" scrolling="no">
		<frameset cols="180,*" frameborder="no" border="0" framespacing="0">
			<frame src="admin/menu" noresize name="menu"
				scrolling="yes">
			<frame src="<%=path %>/admin/sysPro" noresize name="main"
				scrolling="yes">
		</frameset>
	</frameset>
	<noframes>
		<body>您的浏览器不支持框架！
		</body>
	</noframes>
</html>
