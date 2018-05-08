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
    
    <title>My JSP 'materialDetail.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/material.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  		$(function(){
  			$("#material_frame",parent.document).height(0);
  			$("#material_frame",parent.document).height($(document).height());
  		});
  		
  	</script>
  </head>
  <body>
    <div id="materialDetail">
    	<div class="materialDetail_top">
    		<img src="images/user/material_main_top_img.jpg" alt="" />
    	
    	</div>
    	<div class="materialDetail_content">
    		<div class="text">
    			<p><b>品牌：</b>圣象地板</p>
    			<p><b>型号：</b>美好随心拼</p>
    			<p><b>规格（mm）：</b>1220*300*11</p>
    			<p><b>使用空间：</b>客餐厅、卧室、阳台</p>
    			<p><b>简介：</b>圣象地板，是中国地板行业著名品牌。圣象地板拥有中国驰名商标、中国品牌、国家免检、中国标志认证等多项荣誉。</p>
    		</div>
    		<ul>
    			<li><img src="images/user/materialDetail_content_img_main_1.jpg" alt="" /></li>
    			<li><img src="images/user/materialDetail_content_img_main_2.jpg" alt="" /></li>
    		</ul>
    	</div>
    </div>
  </body>
</html>
