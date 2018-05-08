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

	<title>My JSP 'index.jsp' starting page</title>
	
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/classicCase.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/jquery.leanModal.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/classicCase.js"
		type="text/javascript"></script>

</head>

<body>

	<div id="userFeedBack" style="display:none;"> 
			<iframe src="userFeedBack" id="userFeedBackIframe" width="100%" height="529" frameborder="0" scrolling="no"></iframe>
			<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
		</div>
	<div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
	</div>
	<div id="body">
	<c:forEach items="${classiccaseList}" var="classic">
		<input type="hidden" id="classiccaseStyle" value="${classic.classiccaseStyle }"/>
		<input type="hidden" id="classiccaseAcreage" value="${classic.classiccaseAcreage }"/>
		<input type="hidden" id="classiccaseType" value="${classic.classiccaseHouseType }"/>
		<div class="classicCase_photo">
			<img src="images/user/classicCase_photo_img.jpg"/>
		</div>
		<div id="center">
		 
			<div class="classicCase_category" id="categoryList">
				<div class="classicCase_category_1">
					<p class="title">户型：</p>
					<ul class="ul-1">
						<li class="all selected"><a>全部</a></li>
						<c:forEach  items="${housetypeList}" var="typeList">
						<li><a>${typeList.housetypeName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="classicCase_category_2">
					<p class="title">风格：</p>
					<ul class="ul-2">
						<li class="all selected"><a>全部</a></li>
						<c:forEach  items="${housestyleList}" var="styleList">
						<li><a>${styleList.housestyleName}</a></li>
						</c:forEach>
					</ul>

				</div>
				<div class="classicCase_category_3">
					<p class="title">面积：</p>
					<ul class="ul-3">
						<li class="li-1 all selected"><a>全部</a></li>
						<c:forEach  items="${houseacreageList}" var="acreageList">
						<li><a>${acreageList.houseacreageName}</a>m²</li>
						</c:forEach>
					</ul>

				</div>
				<div class="classicCase_category_selected">
					<div class="classicCase_category_selected_img">
						<img src="images/user/classicCase_category_selected_img.jpg"/>
					</div>
					<div class="selected">
						<ol>
							<li class="line"><p></p></li>
							<li class="name">户型</li>
							<li class="value" id="type1">室</li>
						</ol>
						<ol>
							<li class="line"><p></p></li>
							<li class="name">面积</li>
							<li class="value">${classic.classiccaseLarge }m²</li>
						</ol>
						<ol>
							<li class="line"><p></p></li>
							<li class="name">风格</li>
							<li class="value" id="type2"></li>
						</ol>
					</div>
				</div>
			</div>
			<div class="classicCase_detail">
				<div class="h3"><h3>${classic.classiccaseName }</h3></div>
				<div class="classicCase_detail_step">
				 <c:forEach items="${casepictureList}" var="pic">
					<div class="step">
						<div class="photo">
						<img src="${pic.casepicturePicture }"/>
						</div>
						<div class="info">
							<p>${pic.casepictureInfo }</p>
						</div>
					</div>
					
					</c:forEach>
				</div>
			</div>
			
		</div>
		<div class="classicCaseForm">
			<div class="form">
				<p>我家按此效果装修多少钱？</p>
				<form action="" method="post">
					<input type="hidden" name="Id" value="${classic.classiccaseId }"/>
					<input type="text" class="text name" value="请输入您的姓名"/>
					<input type="text" class="text tel" value="请输入您的手机号码"/>
					<input type="submit" class="text submit" value="立即预约"/>
				</form>
			</div>
		
		</div>
		</c:forEach>
	</div>
	
	<div id="footer">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=240
			src="footer"></iframe>
	</div>
</body>
</html>
