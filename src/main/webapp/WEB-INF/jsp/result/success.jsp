<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
	$(document).ready(function(){
		var level =  "${level}";
		var msg = "${msg}";
		var url = "${url}";
		function toIndex(){
			if(level == 'admin'){
				window.location.replace("admin/index");
			}else if(level == 'user'){
				window.location.replace("user/index");
			}else{
				window.location.replace(url);
			}
		}
		$("#btn").click(function(){
			toIndex();
		});
		function clock() { 
			i = i -1;
			if(i > 0) {
				$("#info").html(msg+"<br/>本页面将在"+i+"秒后自动关闭");
				setTimeout(clock,1000);
			}else {
				if(level !="" || url!= ""){	toIndex();}
			}
		}
		var i = 4;
		clock();
	});
	
	</script>
  </head>
 
  <body> <center>
  <div id="info"></div>
   <div><button id="btn">立即跳转</button></div>
  </center>
</body>
</html>
