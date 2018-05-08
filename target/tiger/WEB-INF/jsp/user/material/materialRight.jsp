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
    
    <title>My JSP 'materialRight.jsp' starting page</title>
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
  			$("#materialRight .materialRight_content").find("ul").children("li").each(function(){
  				if(($(this).index()+1)%3 ==2) {
  					$(this).css("margin","0 12.5%");
  				}
  			});
  			$("#material_frame",parent.document).height(0);
  			$("#material_frame",parent.document).height($(document).height());
  		});
  	</script>
  </head>
  <body>
    	<div id="materialRight">
    		<div class="materialRight_top">
    			<img src="images/user/material_main_top_img.jpg" alt="" />
    		</div>
    		<div class="materialRight_content">
    			<ul>
    				<li>
    					<div class="img"><a href="/materialDetail"><img src="images/user/materialRight_content_img_1.jpg" alt="" /></a></div>
    					<p><b>品牌：</b>圣象地板</p>
    					<h1><b>建材简介：</b></h1>
    					<p>型号：美好随心拼</p>
    					<p>规格（mm）：1220*300*11</p>
    					<p>使用空间：客餐厅、卧室、阳台</p>
    				</li>
    				<li>
    					<div class="img"><a href="/materialDetail"><img src="images/user/materialRight_content_img_2.jpg" alt="" /></a></div>
    					<p><b>品牌：</b>马可波罗地砖</p>
    					<h1><b>建材简介：</b></h1>
    					<p>型号：CZ8193AS</p>
    					<p>规格（mm）：800*800</p>
    					<p>使用空间：客餐厅、卧室、阳台</p>
    				</li>
    				<li>
    					<div class="img"><a href="/materialDetail"><img src="images/user/materialRight_content_img_3.jpg" alt="" /></a></div>
    					<p><b>品牌：</b>海马地毯</p>
    					<h1><b>建材简介：</b></h1>
    					<p>型号：T2000</p>
    					<p>规格（mm）：无限</p>
    					<p>使用空间：客餐厅、卧室、阳台</p>
    				</li>
  
    			</ul>
    		
    		</div>
    	
    	</div>
  </body>
</html>
















