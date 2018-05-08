<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="admin/updateAdmin" method="post">
	    <input type="hidden" name="id" value="${admin.id }">
	    <input type="text" name="adminName" value="${admin.adminName }"/>
	    <input type="text" name="password" value="${admin.adminPassword }"/>
	    <input type="text" name="rank" value="${admin.adminRank }"/>
	    <input type="text" name="realname" value="${admin.adminRealName }"/>
	    <input type="submit" value="提交"/>
    </form>
    <a href="admin/admin/showAllAdmin">返回showAll</a>
  </body>
</html>
