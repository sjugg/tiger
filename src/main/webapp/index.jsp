<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		window.onload = function(){
			//中午乱码问题
/* 			window.location.href="/toIndex?city="+encodeURIComponent(remote_ip_info.city)+"&province="+encodeURIComponent(remote_ip_info.province);
 */		
			window.location.href="/toIndex?city=Shanghai&province=Shanghai";
		}
	</script>
  </head>
</html>
