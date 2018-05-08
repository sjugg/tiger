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
    
    <title>云豹装饰--关于我们</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/about.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  </head>
  <body>
     <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
	</div>
	<div id="body">
		<div class="about_top">
			<img src="images/user/about_top_img.jpg" alt="" />
		</div>
		<div class="about_1">
			<div class="title">云豹装饰只需轻轻一点</div>
			<div class="text">
				<p>云豹装饰是江苏宇河科技旗下孵化的互联网整体家装，是一家致力于提供整体化家装（硬装、软装、家电、设备）家装方案和拎包入住的极致服务的互联网家装公司。
				提供家装设计服务、技术服务、施工服务以及本地服务（可以线下参观热装楼盘）于一体的互联网高科技家装服务平台企业，结合线上运营平台，一键预约。</p>
			</div>
			<div class="ul">
				<ul>
					<li><img src="images/user/about_1_ul_img_1.png" alt="" /></li>
					<li><img src="images/user/about_1_ul_img_2.png" alt="" /></li>
					<li><img src="images/user/about_1_ul_img_3.png" alt="" /></li>
				</ul>
			</div>
		</div>
		<div id="about_2">
			<div class="about_2">
				<div class="title">云豹互联网装修</div>
				<div class="text">
					<p>云豹装饰集销售、信息反馈、安装施工、售后服务为一体，业主可以通过效果图沉浸式体验环节享受到品质家装的服务。目前以盐城为据点，规模还在持续扩大中.......</p>
				</div>
				<div class="pic">
					<img src="images/user/about_2_pic_img.png" alt="" />
				</div>
			</div>
		</div>
		<div id="about_3">
			<div class="about_3">
				<div class="title">装修安全保障</div>
				<div class="text">
					<p>云豹装饰用心服务，省力又省心，零增项，致力于打造绿色环保的装饰装修，并提供全方位的装修资讯及装修攻略，为业主免费户型设计及装修报价、三方监督等服务，全程售后，让品质家装触手可得。</p>
				</div>
				<div class="pic">
					<img src="images/user/about_3_pic_img.png" alt="" />
				</div>
			</div>
		</div>
	
		<div id="footer">
			<iframe allowTransparency="true" frameborder="no" border="0" name="footer_frame" scrolling="no" width=100% height=240 src="footer"></iframe>
		</div>
	</div>
  </body>
</html>
