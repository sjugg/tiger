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
	<link rel="stylesheet" type="text/css" href="css/user/decorationService.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
<!--   <div id="header">
			<iframe allowTransparency="true" frameborder="no" border="0" name="header_frame" scrolling="no" width=100% height=210 src="header"></iframe>
		</div>  -->
		<jsp:include   page="../../header.jsp" flush="true"/>
     <div id="body">
     	<div id="decorationService_top">
     		<img src="images/user/decorationService_top_photo_img.jpg"/>
     	</div>
     	<div id="center">
     		<div id="decorationService">
     			<div class="decorationService_1">
     				<div class="decorationService_1_title">
							<div class="top">
								<div class="line line_1"><p></p></div>
								<div class="text">装修服务</div>
								<div class="line line_2"><p></p></div>
							</div>
							<div class="bottom">
							<p>装修复杂，我们为您提供</p>
							</div>
   					</div>
   					<div class="decorationService_1_bottom">
   						<div class="body">
   							<ul>
   								<li>
	   								<img src="images/user/decorationService_1_bottom_img_1.jpg"/>
	   								<div class="text text_1">
	   									<p class="title">水电改造</p>
	   									<p class="info">水电改造强电线头连接完毕，弱电线布线到位，水暖管道的铺设完成即可启动验收程序。</p>
	   								</div>
   								</li>
   								<li>
   								<div class="text  text_2">
   									<p class="title">防水施工</p>
	   								<p class="info">沐浴处墙面防水高度距地2000mm;其余墙面防水高度距地300mm；前面螨刷，不小于24小时的闭水试验。</p>
   								</div>
   								<img src="images/user/decorationService_1_bottom_img_2.jpg"/>
   								<div class="line_2"></div>
   								</li>
   								<li>
   								<img src="images/user/decorationService_1_bottom_img_3.jpg"/>
   								<div class="text text_3">
   									<p class="title">瓦工项目</p>
	   								<p class="info">地面水泥找平；厨、卫墙地砖铺贴；客餐厅、阳台地砖铺贴；厨、为包立管；地漏安装。</p>
   								</div>
   								</li>
   								<li>
   								<div class="text text_4">
   									<p class="title">木工项目</p>
	   								<p class="info">顶角线安装；<br />门洞门框修正修方。</p>
   								</div>
   								<img src="images/user/decorationService_1_bottom_img_4.jpg"/>
   								
   								</li>
   								<li>
   								<img src="images/user/decorationService_1_bottom_img_5.jpg"/>
   								<div class="line_5"></div>
   								<div class="text text_5">
   									<p class="title">油工项目</p>
	   								<p class="info">为墙面漆涂料；<br />墙面用腻子找平，批刮后再打磨。</p>
   								</div>
   								
   								</li>
   								<li>
   								<div class="text text_6">
   									<p class="title">安装项目</p>
	   								<p class="info">开关插座面板材料安装；<br />吸顶灯及其他材料由业主提供。</p>
   								</div>
   								<img src="images/user/decorationService_1_bottom_img_6.jpg"/>
   								
   								</li>
   							
   							</ul>
   						
   						</div>
   					</div>
     			</div>
     			<div class="decorationService_2">
     				<div class="decorationService_2_title">
							<div class="top">
								<div class="line line_1"><p></p></div>
								<div class="text">用心服务每个家</div>
								<div class="line line_2"><p></p></div>
							</div>
							<div class="bottom">
								<p>用心服务 开启你的梦想家</p>
							</div>
   					</div>
   					<div class="decorationService_2_bottom">
   						<ul>
   							<li>
	   							<div class="img"><img src="images/user/decorationService_2_bottom_img_1.png" alt="" /></div>
	   							<div class="info">
	   								<h2>用心</h2>
		   							<p>标准化</p>
		   							<p>全程0增项</p>
		   							<p>客服在线</p>
	   							</div>
   							</li>
   							<li>
	   							<div class="img"><img src="images/user/decorationService_2_bottom_img_2.png" alt="" /></div>
	   							<div class="info">
	   								<h2>一站式</h2>
		   							<p>一站式家装服务</p>
		   							<p>款式风格可选</p>
		   							<p>个性化风格</p>
	   							</div>
   							</li>
   							<li>
	   							<div class="img"><img src="images/user/decorationService_2_bottom_img_3.png" alt="" /></div>
	   							<div class="info">
	   								<h2>便捷</h2>
		   							<p>在线预约</p>
		   							<p>免费设计</p>
		   							<p>整装交付</p>
	   							</div>
   							</li>
   						</ul>
   					</div>
     			</div>
     		</div>
     	</div>
     	<div id="decorationService_bottom">
     		<img src="images/user/decorationService_bottom_photo_img.jpg"/>
     	</div>
     </div>
  </body>
</html>
