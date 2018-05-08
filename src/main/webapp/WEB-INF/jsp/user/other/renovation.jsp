<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
	<title>My JSP 'renovation.jsp' starting page</title>
	
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/renovation.css"/>
	<!--[if IE]>
		<style type="text/css">
			#renovation .renovation_photo_bottom_bg{top:-164px;}
		</style>
	<![endif]-->
		<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
<%-- 		<script language="JavaScript" src="<%=basePath%>/js/user/renovation.js" type="text/javascript"></script>
	 --%>

</head>

<body>
	<div id="renovation">
		<div class="renovation_photo">
			<img alt="" src="images/user/renovation_photo_img.jpg" />
		</div>
		<div class="renovation_photo_bottom">
			<div class="renovation_photo_bottom_font">
				<p>云豹装饰作为一家具有创造力和创新力的整体家装公司，在施工方面有着远超行业的施工标准和质量把控体系；</p>
				<p>产业化工人超国际和行业的施工验收标准，努力为业主提供便捷及省心的全套家装定制服务。</p>
				<p>好家，装出来，专业定制家。</p>
			</div>
			<div class="renovation_photo_bottom_bg"></div>
		</div>

		<div class="renovation_1">
			<div class="renovation_1_content">
				<div class="renovation_1_content_left">

					<p class="top">精准工艺，我们注重每一个细节</p>
					<p class="bottom">精准工艺 装修放心 售后有保障</p>
				</div>
				<div class="renovation_1_content_right">

					<img src="images/user/renovation_1_content_right_img.jpg" />
				</div>
			</div>
		</div>
		<div class="renovation_2">
			<div class="renovation_2_top">
				<div class="renovation_2_top_text">
					<p class="title">验收标准</p>
					<p class="center">验收过程中分为毛坯房验收、过程验收及精装修一房一验三个阶段。业主全程参与隐蔽验收--硬装验收--软装验收三大验收节点。</p>
					<p class="center">验收前需进行操作人工自检，品质主管复检，业主验收后付款。</p>
					<p class="bottom">验收标准参照国家规范，部分标准更严格，高于国家标准。</p>
				</div>
				<div class="renovation_2_top_photo">
					<ul>
						<li><a href="###"><img src="images/user/renovation_2_top_photo_img_1.png" /></a><span>隐蔽验收</span></li>
						<li><a href="###"><img src="images/user/renovation_2_top_photo_img_2.png" /></a><span>硬装验收</span></li>
						<li><a href="###"><img src="images/user/renovation_2_top_photo_img_3.png" /></a><span>轻装验收</span></li>
					</ul>

				</div>
			</div>
			<div class="renovation_2_bottom">
				<div class="renovation_2_bottom_left">
				<img alt="" src="images/user/renovation_2_bottom_left_img.jpg"/>
				</div>
				 <div class="renovation_2_bottom_right">
					<p class="title">产业化工人</p>
					<p class="content">工程人员有着丰富的施工经验，对施工标准有着详细的了解，拥有盐城市政府颁发的能工巧匠荣誉证书，定期培训考核，只为你的品质家。</p>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
