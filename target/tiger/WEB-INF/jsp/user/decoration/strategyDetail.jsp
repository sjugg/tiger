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
    
    <title>My JSP 'showAllStartegy.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/strategy.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/strategy.js" type="text/javascript"></script>
  </head>
  <body>
  <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
	</div>
   	<div id="body">
   		
   		<div id="strategy">
   		
   			<div class="strategy_top">
   				<img src="images/user/strategy_top_img.jpg"/>
   			</div>
   			<div id="strategy_ul">
   				<input type="hidden" id="strategykindsUrlId" value="${strategyList.strategyKindsid }"/>
   				<ul>
   					<c:forEach items="${strategykindsList }" var="kinds">
   						<li><a href="/decoration/strategy?id=${kinds.strategykindsId }">${kinds.strategykindsName }</a></li>
   					</c:forEach>
   				</ul>
   			</div>
   			<div id="center">
   				
   				<div class="strategy_bottom strategyDetail_bottom">
   					<div class="title">
   					<p class="name">${strategyList.strategyName }</p>
   					<p class="line"></p>
   					</div>
   					${strategyList.strategyContent }
   				</div>
   			</div>
   		</div>
   	</div> 
  </body>
</html>
