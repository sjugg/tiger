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
  		$(function() {
		$('#noteButton').click(function() {
			var content = $('textarea[name="content"]').val();
			var title = $('input[name="title"]').val();
			$.ajax({
				url:"/admin/admin/sendNote",
				data:{
					title: title,
					content: content
				},
				dataType:"JSON",
				type:"POST",
				success:function(data) {
					if(data===1) {
						swal({
							title: "温馨提示!",
		                    text: "发送成功!",
		                    type: "success",
		                    confirmButtonText: "关 闭"
						},function() {
							window.location.href="/admin/admin/showNote";
						});
					} else {
						swal({
							title: "温馨提示!",
		                    text: "发送失败!",
		                    type: "warning",
		                    confirmButtonText: "关 闭"
						});
					}
				}
			});
		});
	});
  		
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
    					<!-- <div class="logo"><img src="images/user/login_form_logo_img.jpg" alt="" /></div> -->
    					<div class="choose"><ul><li class="selected"><a>通知</a></li></ul></div>
    					<div class="line"><p class="line"></p></div>
    					<form action="" method="post" id="loginForm">
    						<dl class="text"><dd>请输入通知主题</dd></dl>
    						<dl class="input"><dd ><input name="title"/></dd></dl>
    						<dl class="text"><dd>请输入通知内容</dd></dl>
    						<dl class="input"><textarea  name="content" id="content" rows="13" cols="80"></textarea></dl>
    						<dl class="text"><dd></dd></dl>
    						<dl class="text"><dd></dd></dl>
    						<dl class="text"><dd></dd></dl>
    						<dl class="submit input"><dd><input type="button" id="noteButton" value="发送通知"/></dd></dl>
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















