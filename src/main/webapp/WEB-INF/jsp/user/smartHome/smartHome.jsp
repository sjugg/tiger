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
	<link rel="stylesheet" type="text/css" href="css/user/smartHome.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/smartHome.js" type="text/javascript"></script>
  </head>
  <body>
  		<!--  <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
		</div> -->
		<jsp:include   page="../../header.jsp" flush="true"/>
   		<div id="body">
   			<div id="smartHome_top">
   				<img src="images/user/smartHome_top_img.jpg" alt="" />
   			</div>
   			<div id="center">
   				<div id="smartHome_body">
   					<div class="smartHome_body_1">
   						<div class="smartHome_body_1_title">
   							<div class="top">
   								<div class="line line_1"><p></p></div>
   								<div class="text">智享非凡</div>
   								<div class="line line_2"><p></p></div>
   							</div>
   							<div class="bottom">
   							<p>多维出发，匠心遇上智造</p>
   							
   							</div>
   						</div>
   						<div class="smartHome_body_1_bottom">
   							<img src="images/user/smartHome_body_1_bottom_img.gif" alt="" />
   						</div>
   					
   					</div>
   					<div class="smartHome_body_2">
   						<div class="smartHome_body_2_title">
   							<div class="top">
   								<div class="line line_1"><p></p></div>
   								<div class="text">智能细节</div>
   								<div class="line line_2"><p></p></div>
   							</div>
   							<div class="bottom">
   							<p>品味与质感的回归，悦享智能</p>
   							</div>
   						</div>
   						<div class="smartHome_body_2_bottom">
   							<div class="top">
   								<div class="left">
   									<img src="images/user/smartHome_body_2_bottom_top_left.jpg"/>
   									<div class="bg"></div>
   									<div class="text">
	   									<p>智能玻璃门</p>
	   									<p>无线遥控</p>
	   									<p>自动防风防雨</p>
	   									<p>紧急求助</p>
   									</div>
   								</div>
   								<div class="right">
   									<img src="images/user/smartHome_body_2_bottom_top_right.jpg"/>
   									<div class="bg"></div>
   									<div class="text">
	   									<p>智能百叶窗</p>
	   									<p>内置传感器</p>
	   									<p>维持热量舒适</p>
	   									<p>根据环境自启或关闭</p>
   									</div>
   								</div>
   							</div>
   							<div class="bottom">
   								<ul>
   									<li class="li_1">
   										<img src="images/user/smartHome_body_2_bottom_bottom_img_1.jpg"/>
   										<div class="bg"></div>
   										<div class="text">
		   									<p>让传统家电秒变智能</p>
		   									<p>日常网关功能</p>
		   									<p>远程控制</p>
		   									<p>功率监测</p>
		   									<p>睡眠模式</p>
   										</div>
   									</li>
   									<li class="li_2">
   										<img src="images/user/smartHome_body_2_bottom_bottom_img_2.jpg"/>
   										<div class="bg"></div>
   										<div class="text">
		   									<p>智能摄像机</p>
		   									<p>坚守家的每一个瞬间</p>
		   									<p>全景拍摄</p>
		   									<p>高清摄像</p>
		   									<p>红外夜视</p>
   										</div>	
   									</li>
   									
   									<li class="li_3">
   										<img src="images/user/smartHome_body_2_bottom_bottom_img_3.jpg"/>
   										<div class="bg"></div>
   										<div class="text">
		   									<p>智能指纹锁</p>
		   									<p>上万家庭的选择</p>
		   									<p>远程授权开门</p>
		   									<p>精准指纹算法</p>
   										</div>		
   									</li>
   								</ul>
   							</div>
   						</div>
   						<div class="smartHome_body_3">
	   						<div class="smartHome_body_3_title">
	   							<div class="top">
	   								<div class="line line_1"><p></p></div>
	   								<div class="text">甄选名品</div>
	   								<div class="line line_2"><p></p></div>
	   							</div>
	   							<div class="bottom">
	   								<p>名品大牌  品牌特供 颜质具备</p>
	   							</div>
	   						</div>
	   						<div class="smartHome_body_3_bottom">
	   							<ul>
	   								<li>
	   									<div class="img"><img src="images/user/smartHome_body_3_bottom_img_1.jpg" alt="" /></div>
	   									<div class="text">主材品牌</div>
	   								</li>
	   								<li class="right">
	   									<div class="img"><img src="images/user/smartHome_body_3_bottom_img_2.jpg" alt="" /></div>
	   									<div class="text">辅材品牌</div>
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
