<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>"/>
    <title>My JSP 'buildingBespeakShow.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/index.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/index.js" type="text/javascript"></script>
	<script type="text/javascript" language="JavaScript">
	
	</script>
  </head>
  
  <body>
    	<div class="buildingBespeakShow">
    		<div class="buildingBespeakShow_top"> 
    			<p class="title">预约参观</p>
    			<p class="info">预约参观家装工地 品质家装触手可得</p>
    		</div>
    		<div class="buildingBespeakShow_bottom"> 
    			<form action="/BuildingBespeak" method="post" onsubmit="return checkBuildingBespeakShow()">
    				<input type="hidden" name="buildingbespeakBuildingid" id="buildingbespeakId"/>
    				<div class="text"><p>您的称呼</p><p><input type="text" name="buildingbespeakUsername" id="userName" value="请输入您的称呼" onFocus="if (this.value =='请输入您的称呼') {this.value = '';}" onBlur="if (this.value == '') {this.value = '请输入您的称呼';}"/></p></div>
    				<div class="text"><p>您的电话</p><p><input type="text" name="buildingbespeakTel" id="tel" value="请输入您的手机号码" onFocus="if (this.value =='请输入您的手机号码') {this.value = '';}" onBlur="if (this.value == '') {this.value = '请输入您的手机号码';}"/></p></div>
    				<div class="submit"><p><input type="submit"  value="立即预约"/></p></div>
    			</form>
    		</div>
    		<div class="buildingBespeakShow_photo"> 
    		<img alt="" src="images/user/index_bespeak_model_ico.png"/>
    		</div>
    	</div>
  </body>
</html>
