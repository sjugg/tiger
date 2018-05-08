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
	<link rel="stylesheet" type="text/css" href="css/user/userInfo.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  	$(function(){ 
  		$("#body").height($(document).height()-$("#header").height());
	  	$(".userInfo_right").find("ul").children("li").click(function(){
		  	if($(this).hasClass("pressed")){
		  		$(this).removeClass("pressed");
		  	}else {
		  		$(this).addClass("pressed");
		  	}
	  	})
    });
  	</script>
  </head>
  <body>
    <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header.html"></iframe>
	</div>
	<div id="body">
		<div id="center">
			<div id="userInfo">
				<div class="userInfo_left">
					<div class="userInfo_left_div">
						<h1>个人账户中心</h1>
						<p class="line"></p>
						<p class="manage"><a href="###">账户管理</a></p>
						<p class="line"></p>
						<p class="myHomePage"><a href="###">我的主页</a></p>
						<p class="line"></p>
					</div>
					
				</div>
				<div class="userInfo_right">
					<form>
						<dl><dd class="text">姓名：</dd><dd class="input"><input  value=${userInfo.name}/></dd></dl>
						<dl><dd class="text">所在地：</dd><dd class="input"><input /></dd></dl>
						<dl><dd class="text">联系邮箱：</dd><dd class="input"><input /></dd></dl>
						<dl><dd class="text">性别：</dd><dd class="input"><input /></dd></dl>
						<dl class="style"><dd class="text">喜欢风格：</dd><dd class="input">
							<ul>
								<li>现代简约</li>
								<li>美式</li>
								<li>中式</li>
								<li>北欧</li>
								<li>地中海</li>
								<li>日式</li>
								<li>法式</li>
								<li>田园</li>
							</ul>

						</dd></dl>
						<dl class="synopsis"><dd class="text">个人简介：</dd><dd class="input">
						<textarea>简单的介绍，让大家能够了解你！</textarea></dd></dl>
						<dl><dd class="text"></dd><dd><input  class="submit"  type="submit" value="提交资料"/></dd></dl>
					</form>
				
				</div>
			</div>
		
		</div>
	
	</div>
  </body>
</html>
