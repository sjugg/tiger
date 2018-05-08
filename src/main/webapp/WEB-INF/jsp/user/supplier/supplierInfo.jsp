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
    
    <title>My JSP 'supplierInfo.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/supplierInfo.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  	$(function(){ 
  		$("#body").height($(document).height()-$("#header").height());
	  	$("#material").click(function(){
	  		$("#account").css("color","#5a5a5a");
		  	$(this).css("color","#4bc6ba");
	  		$("#materialManage").css("display","block");
	  		$("#accountManage").css("display","none");
	  		
	  	});
	  	$("#account").click(function(){
  			$("#material").css("color","#5a5a5a");
		  	$(this).css("color","#4bc6ba");
	  		$("#accountManage").css("display","block");
	  		$("#materialManage").css("display","none");
	  	})
    });
  	</script>
  </head>
  <body>
    <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="/header"></iframe>
	</div>
	<div id="body">
		<div id="center">
			<div id="supplierInfo">
				<div class="supplierInfo_left">
					<div class="supplierInfo_left_div">
						<h1>个人账户中心</h1>
						<p class="line"></p>
						<p class="material"><a id="material" class="pressed">材料管理</a></p>
						<p class="line"></p>
						<p class="account"><a id="account">账户管理</a></p>
						<p class="line"></p>
						<p class="myHomePage"><a href="/supplier/supplierHomepage">我的主页</a></p>
						<p class="line"></p>
					</div>
					
				</div>
				<div class="supplierInfo_right" id="materialManage" style="display:block;">
					<div class="material">
						<div class="tip">
							<b>材料图片上传规则</b>
							<p class="line"></p>
							<p class="text">1、材料要求正规，环保健康；</p>
							<p class="text">2、图片要求高清，不允许被拉伸压缩，无边框。</p>
							<p class="line"></p>
						</div>
						<div class="center">
							<b>材料图：</b><a class="upBtn" href="">上传材料</a>
							<ul>
							    <li class="pressed">已通过（0）</li>
							    <li>审核中（0）</li>
							    <li>未通过（0）</li>
							</ul>
							<div class="pic" style="display:none">
							</div>
							<div class="pic_null">暂时还未上传图片</div>
						</div>
						
					
					</div>
				</div>
				<div class="supplierInfo_right" id="accountManage" style="display:none;">
					<form>
					<dl><dd class="text">所属公司：</dd><dd class="input"><input/></dd></dl>
						<dl><dd class="text">姓名：</dd><dd class="input"><input  value="您的真实姓名"/></dd></dl>
						<dl><dd class="text">所在地：</dd><dd class="input"><input /></dd></dl>
						<dl><dd class="text">联系邮箱：</dd><dd class="input"><input /></dd></dl>
						<dl><dd class="text">性别：</dd><dd class="input"><input /></dd></dl>
						<dl class="style"><dd class="text">主营建材：</dd><dd class="input">
							<ul>
								<li>地板</li>
								<li>橱柜</li>
								<li>瓷砖</li>
								<li>家用电器</li>
								<li>开关灯饰</li>
								<li>集成吊顶</li>
								<li>墙艺窗帘</li>
								<li>房门</li>
								<li>卫浴洁具</li>
								<li>阳台窗</li>
								<li>家具家居</li>
								<li>移门橱柜</li>
								<li>油漆</li>
							</ul>

						</dd></dl>
						<dl><dd class="text li_text">材料品牌：</dd><dd class="input"><input /></dd></dl>
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
