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
	<link rel="stylesheet" type="text/css" href="css/user/decorationSupport.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/decorationSupport.js" type="text/javascript"></script>
  </head>
  <body>
  		 <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
		</div>
   		<div id="body">
   			<div id="decorationSupport_top">
   				<img src="images/user/decorationSupport_top_img.jpg" alt="" />
   			</div>
   			<div id="center">
   				<div id="decorationSupport_body">
   					<div class="decorationSupport_body_1">
   						<div class="decorationSupport_body_1_title">
   							<div class="top">
   								<div class="line line_1"><p></p></div>
   								<div class="text">正规公司</div>
   								<div class="line line_2"><p></p></div>
   							</div>
   							<div class="bottom">
   							<p>4大保障为你提供无忧虑服务</p>
   							
   							</div>
   						</div>
   						<div class="decorationSupport_body_1_bottom">
   							<img src="images/user/decorationSupport_body_1_bottom_img.jpg" alt="" />
   							<div class="text">
   								<h1>云豹的装修资质</h1>
   								<p>云豹装饰的各项装修资质、上岗员工及信誉口碑都经过仔细考量，装修经验充足，施工质量有保障。</p>
   							</div>
   						</div>
   					
   					</div>
   					<div class="decorationSupport_body_2">
   							<ul>
   								<li>
   									<div class="img"><img src="images/user/decorationSupport_body_2_img_1.png" alt="" /></div>
   									<div class="text">设计图纸规范化，设计师服务到位，图纸精确，根据您的户型、风格和选材，为您“量体裁衣”。</div>
   								</li>
   								<li class="li-2">
   									<div class="img"><img src="images/user/decorationSupport_body_2_img_2.png" alt="" /></div>
   									<div class="text">正品材料，品质保障，杜绝装修污染，使用的装修材料都是健康、环保的正品装修材料，拒绝假冒伪劣装修材料进场，正品的、装修材料也杜绝了因装修出现的污染。</div>
   								</li>
   								<li>
   									<div class="img"><img src="images/user/decorationSupport_body_2_img_3.png" alt="" /></div>
   									<div class="text">施工规范化按照国家现行《住宅装饰装修工程施工规范》，预算报价一步到位，每一项价格都很透明，拒绝恶意新增项，杜绝装修陷阱！全程监管有错必究。</div>
   								</li>
   							</ul>
   						</div>
   						
   				</div>
   			</div>
   		</div>
   		<div class="decorationSupport_body_3">
	   						<div class="decorationSupport_body_3_title">
	   							<div class="top">
	   								<div class="line line_1"><p></p></div>
	   								<div class="text">服务保障</div>
	   								<div class="line line_2"><p></p></div>
	   							</div>
	   							<div class="bottom">
	   								<p>品质服务，为你的装修保驾护航</p>
	   							</div>
	   						</div>
	   						<div class="decorationSupport_body_3_bottom">
	   							
	   							<ul>
	   								<li>
	   									<div class="img"><img src="images/user/decorationSupport_body_3_bottom_img_1.png" alt="" /></div>
	   									<div class="text">
											<h1>品质服务</h1>
											<p>正规公司 品质优选</p>
										</div>
	   								</li>
	   								<li class="li-2">
	   									<div class="img"><img src="images/user/decorationSupport_body_3_bottom_img_2.png" alt="" /></div>
	   									<div class="text">
											<h1>以诚待人</h1>
											<p>抵制虚假 真材实料</p>
										</div>
	   								</li>
	   								<li class="li-3">
	   									<div class="img"><img src="images/user/decorationSupport_body_3_bottom_img_3.png" alt="" /></div>
   										<div class="text">
											<h1>以信为本</h1>
											<p>诚信可靠 信任首选</p>
										</div>
	   								</li>
	   								<li>
	   									<div class="img"><img src="images/user/decorationSupport_body_3_bottom_img_4.png" alt="" /></div>
   										<div class="text">
											<h1>免费监理</h1>
											<p>全程监管 有错必究</p>
										</div>
	   								</li>
	   							</ul>
	   							
	   						</div>
	   						<div class="decorationSupport_body_3_bg">
								<img src="images/user/decorationSupport_body_3_bottom.png" alt="" />
							</div>
   					</div>
   		
  </body>
</html>
