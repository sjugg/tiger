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
	<link rel="stylesheet" type="text/css" href="css/user/homeDressScene.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
    	<div id="header">
			<iframe allowTransparency="true" frameborder="no" border="0" scrolling="no" width=100% height=500 src="header.html"></iframe>
		</div>
		<div id="body">
			<div class="homeDressScene_top_photo">
				<img alt="" src="images/user/homwDresssSceneDetail_top_photo_img.jpg"/>
				<div class="homeDressScene_top_photo_form">
					<h1>预约参观</h1>
					<form action=" " method="post">
						<input type="text" class="text" name="homeDressSceneUsername" value="请输入您的称呼"/>
						<input type="text" class="text" name="homeDressSceneTel" value="请输入您的手机号码"/>
						<input  class="submit" value="立即预约"/>
					</form>
				</div>
			</div>
			<div id="center">
			<div class="homeDressSceneDetail_body">
				<div class="homeDressSceneDetail_body_top_photo">
					<img src="images/user/homwDresssSceneDetail_top_photo.jpg"/>
					<div class="ul_bg"></div>
					<ul>
						<li class="userInfo">张依的家•三居室•130m²</li>
						<li class="img pressed">水电改造</li>
						<li class="line"></li>
						<li class="img pressed">防水施工</li>
						<li class="line"></li>
						<li class="img pressed">瓦工项目</li>
						<li class="line"></li>
						<li class="img pressed">木工项目</li>
						<li class="line"></li>
						<li class="img">油工项目</li>
						<li class="line"></li>
						<li class="img">安装项目</li>
					</ul>
					
				</div>
				<div class="homeDressSceneDetail_body_content">
					<div class="list">
						<div class="list_left">
						<img src="images/user/homeDressSceneDetail_body_content_ico.png" alt="" />
						</div>
						<div class="list_right">
							<div class="list_right_title">
								<p>2017.12.25 开工大吉</p>
							</div>
							<div class="list_right_info">
							<p>今天开工第一天，举行了一个小小的仪式！如图中所见。</p>
							</div>
							<div class="list_right_img">
								<ul>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_1.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_2.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_3.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="list">
						<div class="list_left">
						<img src="images/user/homeDressSceneDetail_body_content_ico.png" alt="" />
						</div>
						<div class="list_right">
							<div class="list_right_title">
								<p>2017.12.26 水电改造</p>
							</div>
							<div class="list_right_info">
							<p>今天开工根据设计图进行水电改造，施工进行中。</p>
							</div>
							<div class="list_right_img">
								<ul>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_4.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_5.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="list">
						<div class="list_left">
						<img src="images/user/homeDressSceneDetail_body_content_ico.png" alt="" />
						</div>
						<div class="list_right">
							<div class="list_right_title">
								<p>2017.12.30  防水施工</p>
							</div>
							<div class="list_right_info">
							<p>防水施工是确保家居结构防潮性的重要环节，今天工人师傅们在认真做好每一细节，水泥砂浆把墙面磨平，完成后进行闭水试验，24小时内液面无明显下降。</p>
							</div>
							<div class="list_right_img">
								<ul>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_6.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_7.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_8.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="list">
						<div class="list_left">
						<img src="images/user/homeDressSceneDetail_body_content_ico.png" alt="" />
						</div>
						<div class="list_right">
							<div class="list_right_title">
								<p>2017.1.8  瓦工项目</p>
							</div>
							<div class="list_right_info">
							<p>准备好主材和辅材，瓦工进场，在工人师傅的手上墙砖地砖都是横平竖直，拼缝整齐，零空鼓，最后用靠尺进行验收，误差小于2mm。</p>
							</div>
							<div class="list_right_img">
								<ul>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_9.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_10.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_11.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="list">
						<div class="list_left">
						<img src="images/user/homeDressSceneDetail_body_content_ico.png" alt="" />
						</div>
						<div class="list_right">
							<div class="list_right_title">
								<p>2017.1.13 木工项目</p>
							</div>
							<div class="list_right_info">
							<p>根据设计图，吊天花，做家具框架，调整门框方正。</p>
							</div>
							<div class="list_right_img">
								<ul>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_12.jpg" alt="" /></li>
									<li><img src="images/user/homeDressSceneDetail_body_content_list_right_img_13.jpg" alt="" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
  </body>
</html>
