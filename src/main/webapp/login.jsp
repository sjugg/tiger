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
	<link rel="stylesheet" type="text/css" href="css/user/login.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/sweet-alert.css">
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/sweetAlert/js/sweet-alert.min.js" type="text/javascript"></script>
	
  	<script type="text/javascript">
  		$(function(){
  			$("#login").find("ul").children("li").click(function(){
  				$(this).addClass("selected").siblings("li").removeClass("selected");
  				var p = $(this).parent().parent().next().children();
  				if($(this).index() == 0){
  					p.removeClass("pressed");
  				}else if($(this).index() == 1){
  					p.addClass("pressed");
  					var url = "/index";
  					$("#loginForm").attr("action",url); 
  				}
  				
  			});
  		})
  		$(function() {
  		/* 此处关闭原先login功能 */
  		/* $('#loginBotton').click(function() { */
		 $('#loginBottonClose').click(function() { 
			var tel = $('input[name="j_username"]').val();
			var password = $('input[name="j_password"]').val();
			alert(tel);
			alert(password);
			$.ajax({
				url:"/j_spring_security_check",
				data:{
					j_username: tel+"~"+password,
					j_password: password
				},
				dataType:"JSON",
				type:"POST",
				success:function(data) {
					if(data===1) {
						swal({
							title: "温馨提示!",
		                    text: "登陆成功!",
		                    type: "success",
		                    confirmButtonText: "关 闭"
						},function() {
							window.location.href="/index";
						});
					} else {
						swal({
							title: "温馨提示!",
		                    text: "账号或密码错误!",
		                    type: "warning",
		                    confirmButtonText: "关 闭"
						});
					}
				} 
			});
		});
	});
	/* $('input[name="j_username"]').val(tel+"~"+password); */
  	 function checkForm(){
  		var tel = $('input[name="tel"]').val();
  		var password = $('input[name="j_password"]').val();
  		document.getElementById('j_username').value=tel+"~"+password;
  		/* document.loginForm.j_username.value =tel+"~"+password; */
  		/* alert($('input[name="j_username"]').val()); */
  	} 
  	</script>
  </head>
  <body>
    	<div id="login">
    		<div class="login_bg">
    			<img src="images/user/login_bg_img.jpg" alt="" />
    		</div>
    		<div class="login">
    			<div class="login_form">
    				<div class="left">
    					<img src="images/user/login_form_left_img.jpg" alt="" />
    				</div>
    				<div class="right">
    					<div class="logo"><img src="images/user/login_form_logo_img.jpg" alt="" /></div>
    					<div class="choose"><ul><li class="selected"><a>后台个人用户</a></li><li><a>供应商</a></li></ul></div>
    					<div class="line"><p class="line"></p></div>
    					<form action="j_spring_security_check" method="post" id="loginForm" onsubmit="return checkForm()">
    						<dl class="text"><dd>请输入手机号码</dd></dl>
    						<dl class="input"><dd ><input name="tel" id="tel"/></dd><input name="j_username" id="j_username" type="hidden" /></dd></dl>
    						<dl class="text"><dd class="password" >请输入密码</dd><dd class="forgot">忘记密码?</dd></dl>
    						<dl class="input"><dd><input name="j_password" id="j_password" /></dd></dl>
    						<dl class="submit input"><dd><input type="submit" id="loginBotton"  value="登录"/></dd><dd>没有账号?去<a href="register">注册</a></dd></dl>
    					</form>
    				</div>
    			</div>
    			<div class="login_footer">
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















