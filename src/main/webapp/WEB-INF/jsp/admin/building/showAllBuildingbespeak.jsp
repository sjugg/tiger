<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>"/>
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/building.js" type="text/javascript"></script>
  </head>
  
  <body>
  <div style="display:none;">
  	<ul>
  		<c:forEach items="${buildingList}" var="building">
  		<li><p>${building.buildingId }</p>
  		<p>${building.buildingName }</p></li>
  		</c:forEach>
  	</ul>
  
  </div>
   <table style="width:100%;" border="1">
  <tr>
  	<th>序号</th>
  	<th>名字</th>
  	<th>描述</th>
  	<th>图片</th>
  	<th>属性</th>
  	<th>状态</th>
  </tr>
    <c:forEach items="${buildingbespeakList}" var="post" varStatus="num">
    	<tr>
	    	<td>${num.index + 1}</td>
	    	<td>${post.buildingbespeakUsername }</td>
	    	<td>${post.buildingbespeakTel }</td>
	    	<td><fmt:formatDate value="${post.buildingbespeakTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	    	
	    	<td class="nameShow">${post.buildingbespeakBuildingid }</td>
	    	<td>
	    		<c:choose>
			   		<c:when test="${post.buildingbespeakState eq 0}">
			   			<a>待处理</a> <a href="admin/building/buildingDealWith?id=${post.buildingbespeakId }">处理</a>
			   		</c:when>
			   
			   		<c:otherwise> 
			   			<a>已完结</a>
			   		</c:otherwise>
			  
				</c:choose>
	    	
	    	</td>
    	</tr>
    </c:forEach>
    </table>
  </body>
</html>
