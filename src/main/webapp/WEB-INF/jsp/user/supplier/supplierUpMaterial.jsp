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
    
    <title>My JSP 'supplierUpMaterial.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/supplierUpMaterial.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  		$(function(){
  			$(".supplierUpMaterial_1").find("ul").children("li.img").click(function(){
  				/* if($(this).index() == 0){
  					$(this).attr("src","images/user/radio_pressed.png");
  				}else if($(this).index() == 1){
  					$(this).attr("src","images/user/radio_normal.png");
  				} */
  				var input = $(this).parent().parent().children("#input");
  				input.val($(this).next().html());
				if($(this).index() == 0){
					$(this).children("img").attr("src","images/user/radio_pressed.png");
					$(this).parent().children("li").eq(2).children("img").attr("src","images/user/radio_normal.png");
				}else if($(this).index() == 2){
					$(this).parent().children("li").eq(0).children("img").attr("src","images/user/radio_normal.png");
					$(this).children("img").attr("src","images/user/radio_pressed.png");
				}
  				
  			});
  		});
  		
  	
  	</script>
  </head>
  <body>
   		 <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="/header"></iframe>
		</div>
		<div id="body">
			<div id="center">
				<div id="supplierUpMaterial">
					<div class="supplierUpMaterial">
						<div class="supplierUpMaterial_top">
							<p>上传材料</p>
						</div>
						<div class="supplierUpMaterial_1">
							<h1>材料信息</h1>
							<div class="msg">
								<dl>
									<dd class="left"><span>*</span></dd>
									<dd class="right">
										<input type="hidden" id="input" value="主材品牌"/>
										<ul>
											<li class="img"><img src="images/user/radio_pressed.png" alt="" /></li>
											<li>主材品牌</li>
											<li class="img"><img src="images/user/radio_normal.png" alt="" /></li>
											<li>辅材品牌</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dd class="left"><span>*</span></dd>
									<dd class="right"><input value="请输入材料名称型号"/></dd>
								</dl>
						        <dl>
									<dd class="left"><span>*</span></dd>
									<dd class="right">
										<select>
											<option>材料属性</option>
										</select>
										<input class="input" value="材料品牌"/>
									</dd>
								</dl>
								<dl>
									<dd class="left"><span>*</span></dd>
									<dd class="right">
										<select>
											<option>材料规格</option>
											<option class="option">( mm )</option>
											<option class="option">( kg )</option>
										</select>
										<input class="input hidden" value="请输入材料使用空间"/>
									</dd>
								</dl>
								<dl>
									<dd class="left"><span>*</span></dd>
									<dd class="right"><input value="材料说明简介"/></dd>
								</dl>
							
							</div>
						</div>
						<div class="supplierUpMaterial_2">
							<h1>上传材料</h1>
							<div class="pic_left">
								<dl><dd><span>*</span></dd></dl>
							
							</div>
							<div class="pic_right">
								<ul>
									<li class="up">
										<div>
											<p class="add">+</p>
											<p class="text">点击上传图片</p>											
											<p class="tip">支持jpg/gif/png格式</p>
										</div>
									</li>
								
								</ul>
								
							</div>
						</div>
						<div class="supplierUpMaterial_3">
							<h1>上传视频</h1>
							<div class="video">
								<a>上传视频</a>
							</div>
						
						</div>
						<div class="supplierUpMaterial_4">
							<h1>上传封面</h1>
							<div class="pic_left">
								<dl><dd><span>*</span></dd></dl>
							
							</div>
							<div class="pic_right">
								<ul>
									<li class="up">
										<div>
											<p class="add">+</p>
											<p class="text">点击上传图片</p>											
											<p class="tip">支持jpg/gif/png格式</p>
										</div>
									</li>
								
								</ul>
								
							</div>
						
						</div>
						
					</div>
					<div class="supplierUpMaterial_bottom">
							<dl><dd><input type="submit" class="btn1" value="提交"/><input class="btn2" type="submit" value="保存"/></dd></dl>
					</div>
				
				</div>
			
			</div>
		
		</div>
  </body>
</html>
