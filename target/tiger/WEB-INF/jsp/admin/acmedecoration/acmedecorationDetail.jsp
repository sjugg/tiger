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
    
    <title>My JSP 'acmeDecoration.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/acmeDecoration.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
  <c:forEach items="${acmedecorationList }" var="acmedecoration">
    <div id="acmeDecoration_top_photo">
    	<img src="${acmedecoration.acmedecorationMaxpic }"/>
    
    </div>
    <div id="body">
    	<div id="center">
    		
    		<div id="acmeDecoration">
    		
    			<div class="acmeDecoration_title">
    				<p class="name">${acmedecoration.acmedecorationName }</p>
    				<p class="info">${acmedecoration.acmedecorationInfo }</p>
    			</div>
    			<div class="acmeDecoration_content">
    				<c:forEach items="${acmedecorationpicList }" var="pic">
    				<div class="step">
    					<div class="pic">
    						<img src="${pic.acmedecorationpicPic }" alt="" />
	    				</div>
	    				<div class="line"><p></p></div>
	    				<div class="name"><p>${pic.acmedecorationpicName }</p></div>
	    				<div class="info"><p>${pic.acmedecorationpicInfo }</p></div>
    				</div>
    				</c:forEach>
    			</div>
    		</div>
    	</div>
    
    </div>
    </c:forEach>
  </body>
</html>
