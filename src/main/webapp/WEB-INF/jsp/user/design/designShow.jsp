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
    <title>云象装饰</title>
    
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
<link rel="stylesheet" type="text/css" href="css/user/design.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="js/jquery.leanModal.min.js"></script>
<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
<script language="JavaScript" src="<%=basePath%>/js/user/design.js" type="text/javascript"></script>
	

  </head>
  
  <body>
  
    <div class="designShow">
    
	    <div class="designShow_left">
	    	<img src="${designPic }"/>
	    
	    </div>
	    <div class="designShow_right">
	    	 <div class="designShow_right_top">
	    	 	<h3>假日田园</h3>
	    		<p>${designInfo }</p>
		    </div>
		     <div class="designShow_right_center">
		    	<c:choose>
	            	<c:when test="${designPic == null}">
	            		<h3>按此类风格装修多少钱？</h3>
				    	<form action="/designoffer" method="post" onsubmit="return checkDesignShow()">
					    	<input id="designStylesId" type="hidden" name="designStylesId"/>
					    	<input class="text" type="text" id="acreage" name="designofferAcreage" value="建筑面积"/>
					    	<input class="text" type="text" id="tel" name="designofferTel" value="手机"/>
					    	<input class="submit" type="submit" value="立即报价"/>
				    	
				    	</form>
	         		</c:when>
	            	<c:otherwise>
	            	<p class="top">房屋面积为：<span>${desginofferAcreage }</span> m²</p>
	            	<p class="bottom">报价：<span>${designofferCost }</span> 元</p>
	         		</c:otherwise>
        		</c:choose>
		    	
		    
		    </div>
		     <div class="designShow_right_bottom">
		    	<p>已有<span>${allDesign }</span>位用户获得报价</p>
		    
		    </div>
	    
	    </div>
    
    </div>
  </body>
</html>
