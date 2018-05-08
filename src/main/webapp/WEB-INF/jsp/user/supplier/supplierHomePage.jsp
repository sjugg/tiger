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
    
    <title>My JSP 'userHomePage.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/homePage.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  		$(function(){
  			$("#homepage_content_bottom_ul li").each(function(){
  				if(($(this).index()+1)%3 == 2){
  					$(this).css("margin","0 5%");
  				
  				}
  			});
  			
  		});
  	
  	</script>
  </head>
  <body>
  		<div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
		</div>
    	<div id="body">
    		<div id="homepage">
    			<div class="homepage_bg">
    				<img src="images/user/homepage_bg_img.png" alt="" />
    			</div>
    			<div class="homepage_content">
    				<div class="content">
    					<div class="top">
    						<div class="bg"></div>
    						<h1>个人档案</h1>
    						<div class="info">
    							<dl><dd>姓名：徐梦圆</dd><dd class="info_dd">所在地：江苏盐城</dd></dl>
    							<dl><dd>所属公司：盐城建筑材料装饰有限公司</dd><dd class="info_dd">主营建材：地板瓷砖</dd></dl>
    							<dl><dd>喜欢风格：圣象地板 马可波罗瓷砖 海马地毯</dd><dd class="info_dd">联系邮箱：1645612354@qq.com</dd></dl>
    							<dl><dd class="info_null info_me">个人简介：经营建筑材料及装饰材料已多年，材料优品，正品保障，高端品质。</dd></dl>
    						</div>
    					</div>
    					<div class="bottom">
    						<h1>建筑装修材料图</h1>
    						<div class="img">
    							<ul id="homepage_content_bottom_ul">
    								<li>
    									<div class="pic"><img src="images/user/homepage_content_bottom_ul_img_1.jpg" alt="" /></div>
    									<p><b>品牌：</b>圣象地板</p>
    									<p><b>型号：</b>美好随心拼</p>
    									<p><b>规格(mm):</b>1220*300*11</p>
    									<p><b>使用空间：</b>客餐厅、卧室、阳台</p>
    								</li>
    								<li>
    									<div class="pic"><img src="images/user/homepage_content_bottom_ul_img_2.jpg" alt="" /></div>
    									<p><b>品牌：</b>圣象地板</p>
    									<p><b>型号：</b>美好随心拼</p>
    									<p><b>规格(mm):</b>1220*300*11</p>
    									<p><b>使用空间：</b>客餐厅、卧室、阳台</p>
    								</li>
    								<li>
    									<div class="pic"><img src="images/user/homepage_content_bottom_ul_img_3.jpg" alt="" /></div>
    									<p><b>品牌：</b>圣象地板</p>
    									<p><b>型号：</b>美好随心拼</p>
    									<p><b>规格(mm):</b>1220*300*11</p>
    									<p><b>使用空间：</b>客餐厅、卧室、阳台</p>
    								</li>
    						
    							</ul>
    						
    						</div>
    					</div>
    				
    				</div>
    			
    			</div>
    		</div>
    	
    	</div>
  </body>
</html>
