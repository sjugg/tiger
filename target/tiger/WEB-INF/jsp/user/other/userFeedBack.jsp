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
    
    <title>My JSP 'userFeedBack.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/userFeedBack.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/footer.js" type="text/javascript"></script>
  </head>
  <body>
		<div class="userFeedBack">
			<div class="userFeedBack_title">
			<h1>用户反馈</h1>
			<p></p>
			</div>
			<div class="userFeedBack_form">
				<form>
					<textarea rows="10" cols="10">请在这里写下有什么想对我们说的~</textarea>
					<input type="text" value="留下你的联系方式，我们将竭诚为你服务！"/>
					<input type="submit" class="submit" value="提交"/><div id="cancel">取消<<</div>
				</form>
			</div>
		</div>   		
  </body>
</html>
