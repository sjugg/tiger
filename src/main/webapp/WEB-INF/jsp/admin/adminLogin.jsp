<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){});
		function checkLogin(){
			if($("#adminName").val() == ""){
				alert("用户名不能为空！");
				return false;
			}
			if($("#password").val() == ""){
				alert("密码不能为空！");
				return false;
			}
		    return true;
		}
			
	</script>
  </head>
  
  <body>
    <form action="admin/adminLogin" id="formLogin" method="post" onsubmit="return checkLogin();">
	    <input type="text" name="adminName" id="adminName"/>
	    <input type="text" name="password" id="password"/>
	    <input type="submit" value="提交" />
    </form>

  </body>
</html>
