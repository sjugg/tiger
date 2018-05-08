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
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
		var picSrc =  "${picSrc}";
		var fileIndex =  "${fileIndex}";
		function clock() { 
	
			i = i -1;
			if(i > 0) {
			    $("#info").html(picSrc+"本页面将在"+i+"秒后自动关闭"+fileIndex);
				setTimeout(clock,1000);
			}else {
				if(picSrc !=""){
					if(fileIndex!="undefined"){
						$("#upFile"+fileIndex,window.opener.document).val(picSrc);
					}else {
						$("#upFile",window.opener.document).val(picSrc);
					}
					
					closeWin();
				}
			}
		}
		var i = 1;
		clock();
	});
	
	</script>
  </head>
  
  <body>
     <center>
	  <div id="info"></div>
	  </center>
  </body>
</html>
