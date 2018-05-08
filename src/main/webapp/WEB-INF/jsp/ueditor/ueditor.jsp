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
    
    <title>My JSP 'ueditor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<SCRIPT type=text/javascript src="<%=basePath%>ueditor/ueditor.config.js"></SCRIPT>  
    <SCRIPT type=text/javascript src="<%=basePath%>ueditor/ueditor.all.js"></SCRIPT>
	<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
	<script type="text/javascript" >

	</script>
  </head>
  
  <body>
    <form action="ueditor/ueditor" method="post">
        <TEXTAREA id=myEditor name="mycontent"></TEXTAREA>  
        <SCRIPT type=text/javascript>  
           UE.getEditor('myEditor');
        </SCRIPT>
        <input name="submit" value="提交" type="submit">
    </form>
  </body>
</html>
