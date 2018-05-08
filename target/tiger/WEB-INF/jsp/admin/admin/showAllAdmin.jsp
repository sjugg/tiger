<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${time }" pattern="yyyy-MM-dd HH:mm:ss"/>  --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showUser.jsp' starting page</title>
    
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
  <a href="admin/admin/toAddAdmin">新增</a>
  <table style="width:100%;" border=1>
  <tr>
  	<th>ID</th>
  	<th>用户名</th>
  	<th>密码</th>
  	<th>权限级别</th>
  	<th>姓名</th>
  	<th>描述</th>
  	<th>注册时间</th>
  	<th>最后登录时间</th>
  	<th>最后登录IP</th>
  	<th>操作</th>
  </tr>
    <c:forEach items="${adminList}" var="post">
    	<tr>
	    	<td>${post.id }</td>
	    	<td>${post.adminName }</td>
	    	<td>${post.adminPassword }</td>
	    	<td>${post.adminRank }级</td>
	    	<td>${post.adminRealName }</td>
	    	<td>${post.adminInfo }</td>
	    	<td>${post.adminAddTime }</td>
	    	<td>${post.adminLastTime }</td>
	    	<td>${post.adminLastIp }</td>
	    	<td><a href="admin/admin/delAdmin?id=${post.id }">删除</a>
	    	<a href="admin/admin/toUpdateAdmin?id=${post.id }">更新</a></td>
    	</tr>
    </c:forEach>
    </table>
  </body>
</html>
