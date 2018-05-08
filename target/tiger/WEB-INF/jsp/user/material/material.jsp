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
    
    <title>My JSP 'material.jsp' starting page</title>
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
  			$("#material .material_left").find("ul").children("li").click(function(){
  				$(this).addClass("pressed").siblings("li").removeClass("pressed");
  				if($(this).index()==0){
  					$("#material_frame").attr("src","materialRight");
  				}else if($(this).index()==1){
  					$("#material_frame").attr("src","materialRightSec");
  				}
  			});
  		});
  				
  		
  	</script>
  </head>
  <body>
    <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
	</div>
	<div id="body">
		<div id="center">
			<div id="material">
				<div class="material_left">
					<h1>材料品牌</h1>
					<ul>
						<li class="pressed">主材品牌</li>
						<li>辅材品牌</li>
					</ul>
				</div>
				<div class="material_right">
					<iframe  allowTransparency="true" frameborder="no" border="0" name="material_frame" 
						id="material_frame" scrolling="no" width=100%  height=800 src="materialRight">
					</iframe>
				
				</div>
			</div>
		</div>
		</div>
</body>
</html>
