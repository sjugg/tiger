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
    
    <title>My JSP 'showAllStrategy.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
<%-- 	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script> --%>
  </head>
  <body>
   	<div>
   	<ul>
   		<li style="float:left;margin-left:30px;"><a href="/admin/strategy/showAllStrategy">全部</a></li>
   		<c:forEach items="${strategykindsList}" var="kinds">
   		<li style="float:left;margin-left:30px;"><a href="admin/strategy/showStrategyByKindsId?id=${kinds.strategykindsId}">${kinds.strategykindsName }</a></li>
   	
   		</c:forEach>
   	
   	
   	</ul>
   	<br />
  <a href="admin/strategy/toAddStrategy">增加攻略</a>
  <table style="width:100%;" border="1" >
  <tr>
  	<th>ID</th>
  	<th>用户名</th>
  	<th>密码</th>
  	<th>权限级别</th>
  	<th>姓名</th>
  	<th>操作</th>
  </tr>
    <c:forEach items="${strategyList}" var="post">
    	<tr>
	    	<td>${post.strategyId }</td>
	    	<td>${post.strategyName }</td>
	    	<td>${post.strategyPicture }</td>
	    	<td style="max-width:300px;overflow:hidden;">${post.strategyInfo }</td>
	    	<td>${post.strategyKindsid }</td>
	    	<td><a href="admin/strategy/strategyDetail?id=${post.strategyId }">查看</a>
	    	 <a href="admin/strategy/toUpdateStrategy?id=${post.strategyId }">更新</a>
	    	</td>
    	</tr>
    </c:forEach>
    </table>
   	
   	
   	</div> 
  </body>
</html>
