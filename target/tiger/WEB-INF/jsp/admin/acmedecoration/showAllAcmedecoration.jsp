<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showAllClassicCase.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <a href="admin/acmedecoration/toAddAcmedecoration">增加</a>
   <table style="width:100%;" border=1>
  <tr>
  	<th>序号</th>
  	<th>名字</th>
  	<th>描述</th>
  	<th>图片</th>
  	<th>字表id(暂时没用)</th>
  	<th>属性</th>
  	<th>风格</th>
  	<th>面积</th>
  	<th>户型</th>
  	<th>操作</th>
  </tr>
    <c:forEach items="${acmedecorationList}" var="post" varStatus="num">
    	<tr>
	    	<td>${num.index + 1}</td>
	    	<td>${post.acmedecorationName }</td>
	    	<td>${post.acmedecorationInfo }</td>
	    	<td>${post.acmedecorationPic }</td>
	    	<td>${post.acmedecorationMinpic }</td>
	    	<td><a href="admin/acmedecoration/acmedecorationDetail?id=${post.acmedecorationId }">查看</a></td>
    	</tr>
    </c:forEach>
    </table>
  </body>
</html>
