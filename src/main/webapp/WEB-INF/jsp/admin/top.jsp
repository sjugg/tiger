<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/admin/basic.css">
	<link rel="stylesheet" type="text/css" href="css/admin/top.css">
	

  </head>
  
  <body>
    <div class="header_bottom" id="top">
    <div class="header_bottom_left">
	<img style="margin-left:20px;" height="100%" width="20%" src="images/user/logo.png">
    </div>
    <div class="top_right">
    
    </div>
    
    </div> 
  </body>
</html>
