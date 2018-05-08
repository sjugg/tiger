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
    
    <title>My JSP 'identity.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/backPassword.css"/>
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
		<div id="center">
			<div id="backpassword">
				<h1>找回密码</h1>
				<div class="backpassword">
					<div class="state">
						<ul class="ul_1">
							<li><img src="images/user/backpassword_state_step_img_pressed_1.png" alt="" /></li>
							<li><img src="images/user/backpassword_state_step_img_pressed_2.png" alt="" /></li>
							<li><img src="images/user/backpassword_state_step_img_pressed_3.png" alt="" /></li>
							<li><img src="images/user/backpassword_state_step_img_pressed_4.png" alt="" /></li>
						</ul>
						<p class="line"></p>
						<ul class="ul_2">
							<li>填写账户</li>
							<li>验证身份</li>
							<li>设置新密码</li>
							<li>完成</li>
						</ul>
					</div>
					<div class="form">
						<form action="">
							<dl>
								<dd class="text">设置新密码：</dd>
								<dd class="input"><input value=""/></dd>
							</dl>
							<dl>
								<dd class="text">确认密码：</dd>
								<dd class="input"><input value=""/></dd>
							</dl>
							<dl><dd class="text"></dd><dd><input value="下一步" class="submit" type="submit"/></dd></dl>
						</form>
					
					</div>
				</div>
			</div>
		
		</div>
	</div>
  </body>
</html>
