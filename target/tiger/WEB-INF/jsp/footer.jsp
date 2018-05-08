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
    
    <title>My JSP 'footer.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/footer.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script language="JavaScript" src="<%=basePath%>/js/user/footer.js" type="text/javascript"></script>
  </head>
  <body>
    	<div class="footer">
    	<div class="footer_url">
	    	<p>
	    		<a href="/about" target="_blank">关于我们</a>
	    		<a href="/contactUs" target="_blank">联系我们</a>
	    		<a href="/recruit" target="_blank">加入我们</a>
	    		<a href="" target="_blank"> 意见反馈</a>
	    	</p>
    	</div>
    	<div class="footer_msg">
    	<p>
    		<span class="img"><img class="img" src="images/user/footer_msg_tel_img.png"/></span>
    		<span class="tel">0515-88878168</span>
    		<span class="addr">地址：盐城市亭湖区希望大道58号绿地商务城蓝海商务楼12-4#803</span>
    	
    	</p>
    	
    	</div>
    	<div class="footer_copyright">
    		<p>苏ICP备   / 苏公网安备/ Powered by <span>©</span> 2017 乐虎装饰</p>
    	</div>
    	<div class="footer_btn">
    	<p>
    	<button id="userFeedBack" class="user_feedback">用户反馈</button>
    	
    	<button class="service_on-line">在线客服</button></p>
    	
    	</div>
    
    </div>
  </body>
</html>
