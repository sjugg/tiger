<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
<link rel="stylesheet" type="text/css" href="css/user/design.css"/>
<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>js/jquery.leanModal.min.js"></script>
<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
<script language="JavaScript" src="<%=basePath%>/js/user/design.js" type="text/javascript"></script>
	
</head>

<body>
<div id="designShow" style="display:none;"> 
	<iframe src="designShow" id="designShowIframe" width="100%" height="529" frameborder="0" scrolling="no"></iframe>
	<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
</div>

	<div id="design">
		<div class="design_photo">
			<img alt="" src="images/user/design_photo_img.jpg"/>
		</div>
		<div class="design_text"></div>
	</div>
	<div id="body">
		<div id="center">
			<div class="center_text">
				<div class="center_text_ico">
					<img alt="" src="images/user/design_center_text_ico.png"/>
				</div>
				<div class="center_text_font">
					<div class="top">
						<p>0元设计免费抢</p>
					</div>
					<div class="bottom">
						<p>
							已为<span>${designbespeakLen }</span>位用户提供设计
						</p>
					</div>
				</div>
				<div class="center_text_form">
					<form action="/designbespeak" method="post" onsubmit="return checkForm()">
						<input class="name" onFocus="if (this.value == '请输入您的姓名') {this.value = '';}" onBlur="if (this.value == '') {this.value = '请输入您的姓名';}" type="text" name="designbespeakUsername" value="请输入您的姓名" /> <input
							class="tel"  onFocus="if (this.value == '请输入您的手机号码') {this.value = '';}" onBlur="if (this.value == '') {this.value = '请输入您的手机号码';}" type="text" name="designbespeakTel" value="请输入您的手机号码" /> <input
							class="submit" type="submit" value="立即预约" />
					</form>
				</div>
				
		</div>
			<div class="center_title">
				<div class="center_title_top">
					<div class="center_title_left_line title">
						<p></p>
					</div>
					<div class="center_title_text  title">
						<h1>选风格</h1>
					</div>
					<div class="center_title_right_line title">
						<p></p>
					</div>
				</div>
				<div class="center_title_bottom">
					<span>推荐装修效果，省心到家</span>
				</div>
			</div>
			<div class="center_ul">
				<ul class="center_ul_js" id="designShow_box">
					<c:forEach items="${designList }" var="design"  varStatus="num">
					<li id="li-${num.index+1 }">
					<img alt="" src="${design.designMainpic }"/>
					<input type="hidden" class="pic" value="${design.designPic }"/>
					<input type="hidden" class="id" value="${design.designId }"/>
					<input type="hidden" class="designLen" value="${designLen }"/>
					<input type="hidden" class="designInfo" value="${design.designInfo }"/>
					</li>
					</c:forEach>
				</ul>
			</div>
			
		</div>
		<div class="center_bg"></div>
	</div>

</body>
</html>
