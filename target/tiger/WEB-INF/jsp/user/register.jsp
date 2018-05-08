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
    
    <title>My JSP 'register.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/register.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  		$(function(){
  			$("#register").find("ul").children("li").click(function(){
  				if($(this).index() == 0){
  					$("#supplier_register").css("display","none");
  					$("#user_register").css("display","block");
  				}else if($(this).index() == 1){
  					$("#user_register").css("display","none");
  					$("#supplier_register").css("display","block");
  				}
  				
  			});
  		})
  		
  	</script>
  </head>
  <body>
    	<div id="register">
    		<div class="register_bg">
    			<img src="images/user/login_bg_img.jpg" alt="" />
    		</div>
    		<div class="register" id="user_register">
    			<div class="register_form">
    				<div class="left">
    					<img src="images/user/login_form_left_img.jpg" alt="" />
    				</div>
    				<div class="right">
    					<div class="logo"><img src="images/user/login_form_logo_img.jpg" alt="" /></div>
    					<div class="choose"><ul><li class="selected"><a>个人用户</a></li><li><a>供应商</a></li></ul></div>
    					<div class="line"><p class="line"></p></div>
    					<form action="" method="post" id="registerForm">
    						<dl class="text"><dd>请输入手机号码</dd></dl>
    						<dl class="input"><dd><input /></dd></dl>
    						<dl class="text"><dd class="password">请输入密码</dd></dl>
    						<dl class="input"><dd><input /></dd></dl>
    						<dl class="input yzm"><dd><input value="验证码"/></dd><dd><a>获取验证码</a></dd></dl>
    						<dl class="text user"><dd>注册代表已阅读并同意《云豹装饰注册协议》</dd></dl>
    						<dl class="submit input login"><dd><input type="submit" value="立即注册"/></dd><dd>已有账号?去<a href="login">登录</a></dd></dl>
    					</form>
    				</div>
    			</div>
    			<div class="register_footer">
    				<div class="top">
    					<ul>
    						<li><a href="index">首页</a></li>
    						<li><a href="about">关于云豹</a></li>
    						<li><a href="">在线客服</a></li>
    					</ul>
    				</div>
    				<div class="bottom">
    					<p>@Copyright 2017 云豹装饰版权所有 苏ICP备</p>
    				</div>
    			</div>
    		</div>
    		<div class="register" id="supplier_register" style="display:none;">
    			<div class="register_form">
    				<div class="left">
    					<img src="images/user/login_form_left_img.jpg" alt="" />
    				</div>
    				<div class="right">
    					<div class="logo"><img src="images/user/login_form_logo_img.jpg" alt="" /></div>
    					<div class="choose"><ul><li><a>个人用户</a></li><li class="selected"><a>供应商</a></li></ul></div>
    					<div class="line"><p class="line pressed" ></p></div>
    					<form action="" method="post" id="registerForm">
    						<dl class="text"><dd>请输入公司名</dd></dl>
    						<dl class="input"><dd><input /></dd></dl>		
    						<dl class="text"><dd class="password">请输入密码</dd></dl>
    						<dl class="input"><dd><input /></dd></dl>
    						<dl class="text"><dd class="password">请输入手机号</dd></dl>
    						<dl class="input"><dd><input /></dd></dl>
    						<dl class="input yzm"><dd><input value="验证码"/></dd><dd><a>获取验证码</a></dd></dl>
    						<dl class="text supplier"><dd>注册代表已阅读并同意《云豹装饰注册协议》</dd></dl>
    						<dl class="submit input"><dd><input type="submit" value="立即注册"/></dd><dd>已有账号?去<a href="login">登录</a></dd></dl>
    					</form>
    				</div>
    			</div>
    			<div class="register_footer">
    				<div class="top">
    					<ul>
    						<li><a href="index">首页</a></li>
    						<li><a href="about">关于云豹</a></li>
    						<li><a href="">在线客服</a></li>
    					</ul>
    				</div>
    				<div class="bottom">
    					<p>@Copyright 2017 云豹装饰版权所有 苏ICP备</p>
    				</div>
    			</div>
    		</div>
    	</div>
  </body>
</html>















