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
	<link rel="stylesheet" type="text/css" href="css/user/joinUs.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/sweet-alert.css">
	<script language="JavaScript" src="<%=basePath%>/js/user/sweetAlert/js/sweet-alert.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/joinUs.js" type="text/javascript"></script>
	<script>
	$(function() {
		$('#joinReg').click(function() {
			var tel = $('input[name="companyTel"]').val();
			var company = $('input[name="companyName"]').val();
			var name = $('input[name="companyUserName"]').val();
			$.ajax({
				url:"/joinReg",
				data:{
					tel: tel,
					company: company,
					name: name
				},
				dataType:"JSON",
				type:"POST",
				success:function(data) {
					if(data===1) {
						swal({
							title: "温馨提示!",
		                    text: "注册成功!",
		                    type: "success",
		                    confirmButtonText: "关 闭"
						},function() {
							window.location.href="/tologin";
						});
					}else  {
						swal({
							title: "温馨提示!",
		                    text: "该手机号已被注册!",
		                    type: "error",
		                    confirmButtonText: "关 闭"
						});
					}
				}
			});
		});
	});
	</script>
  </head>
  <body>
  <jsp:include   page="../../header.jsp" flush="true"/>
    <div id="body">
    	<div class="joinUs_top">
    		<img src="images/user/joinus_top_img.jpg"/>
    	</div>
    		<div id="joinUs_center_1">
    			<div class="joinUs_center_1_title">
						<div class="joinUs_center_1_title_top">
							<div class="joinUs_center_1_title_left_line title">
								<p></p>
							</div>
							<div class="joinUs_center_1_title_text  title">
								<h1>云豹自成立至今</h1>
							</div>
							<div class="joinUs_center_1_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="joinUs_center_1_title_bottom">
							<p>云豹自成立至今，面向全国招募加盟商以来，以盐城为据点，
							目前云豹的市场正在覆盖中，并且多个城市正在筹备.....</p>
						</div>
				</div>
    			<div class="joinUs_center_1_photo">
    				<img src="images/user/joinUs_center_1_photo_img.jpg"/>
    			</div>
    		
    		</div>
    		<div id="joinUs_center_2">
    			<div class="joinUs_center_2_title">
						<div class="joinUs_center_2_title_top">
							<div class="joinUs_center_2_title_left_line title">
								<p></p>
							</div>
							<div class="joinUs_center_2_title_text  title">
								<h1>供应链共享</h1>
							</div>
							<div class="joinUs_center_2_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="joinUs_center_2_title_bottom">
							<h1>国际一线品牌合作商</h1>
							<p>云豹拥有强大的供应链体系和严格的选材标准，所以选材以标准健康环保为基础，精选国内外一线品牌。工厂
							直供消费者，省去中间经销商环节；业主享受最大的价格优惠和质量保证。</p>
							
						</div>
				</div>
    			<div class="joinUs_center_2_photo">
	    			<ul>
	    				<li><img src="images/user/index_center_7_body_img_1.jpg" /></li>
	    				<li><img src="images/user/index_center_7_body_img_2.jpg" /></li>
	    				<li><img src="images/user/index_center_7_body_img_3.jpg" /></li>
	    				<li><img src="images/user/index_center_7_body_img_4.jpg" /></li>
	    			</ul>
    			
    			</div>
    		
    		</div>
    		<div id="joinUs_center_3">
    			<div class="joinUs_center_3_title">
						<div class="joinUs_center_3_title_top">
							<div class="joinUs_center_3_title_left_line title">
								<p></p>
							</div>
							<div class="joinUs_center_3_title_text  title">
								<h1>线上+线下全面触及人群</h1>
							</div>
							<div class="joinUs_center_3_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="joinUs_center_3_title_bottom">
							<p>线上云豹官网进行引流，业主们可以在官网上获取信息，并且可以到店进行装修咨询，云豹装饰根据实际情况制定方案，进行设计及施工。</p>
							
						</div>
				</div>
    			<div class="joinUs_center_3_photo">
	    			<ul>
	    				<li class="img img_1"><img src="images/user/joinUs_center_3_photo_img_1.png" /></li>
	    				<li class="line"><p class="line"></p></li>
	    				<li class="img"><img src="images/user/joinUs_center_3_photo_img_2.png" /></li>
	    				<li class="line"><p class="line"></p></li>
	    				<li class="img"><img src="images/user/joinUs_center_3_photo_img_3.png" /></li>
	    				<li class="line"><p class="line"></p></li>
	    				<li class="img"><img src="images/user/joinUs_center_3_photo_img_4.png" /></li>
	    			</ul>
    			
    			</div>
    		
    		</div>
    		<div id="joinUs_center_4">
    			<div class="joinUs_center_4_title">
						<div class="joinUs_center_4_title_top">
							<div class="joinUs_center_4_title_left_line title">
								<p></p>
							</div>
							<div class="joinUs_center_4_title_text  title">
								<h1>入驻条件</h1>
							</div>
							<div class="joinUs_center_4_title_right_line title">
								<p></p>
							</div>
						</div>
				</div>
    			<div class="joinUs_center_4_photo">
	    			<ul>
	    				<li class="img"><img src="images/user/joinUs_center_4_photo_img_1.jpg" alt="" /></li>
	    				<li class="text">
	    				<p class="title">团队</p>
	    				<p class="info">团队健全，推崇人文管理，坚持职业精神具备积极向上的价值观。</p>
	    				</li>
	    				<li class="img"><img src="images/user/joinUs_center_4_photo_img_2.jpg" alt="" /></li>
	    				<li class="text">
							<p class="title">理念</p>
	    					<p class="info">强烈品牌经营意识，用心超过客户预期。</p>
						</li>
	    				<li class="img"><img src="images/user/joinUs_center_4_photo_img_3.jpg" alt="" /></li>
	    				<li class="text">
							<p class="title">诚信</p>
	    					<p class="info">诚信为本，品牌大于销售，坚持诚信经营，以人为本，落到实处。</p>
						</li>
	    			</ul>
    			
    			</div>
    		
    		</div>
    		<div id="joinUs_center_5">
    			<div class="joinUs_center_5_bg"><img src="images/user/joinUs_center_5_bg.jpg" alt="" /></div>
	    			 <div class="joinUs_center_5_title">
							<div class="joinUs_center_5_title_top">
								<div class="joinUs_center_5_title_left_line title">
									<p></p>
								</div>
								<div class="joinUs_center_5_title_text  title">
									<h1>入驻申请</h1>
								</div>
								<div class="joinUs_center_5_title_right_line title">
									<p></p>
								</div>
							</div>
					</div>
    			<div class="joinUs_center_5_form">
    				<form action="" onsubmit="return checkForm();">
	    				<dl><dd>公司名称<input type="text" name="companyName" value="请输入您的公司名称" onfocus="if (this.value == '请输入您的公司名称') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您的公司名称';}"/></dd></dl>
	    				<dl><dd>您的电话<input type="text" name="companyTel" value="请输入您的手机号码" onfocus="if (this.value == '请输入您的手机号码') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您的手机号码';}"/></dd></dl>
	    				<dl><dd>您的称呼<input type="text" name="companyUserName" value="请输入您的称呼" onfocus="if (this.value == '请输入您的称呼') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您的称呼';}"/></dd></dl>
	    				<dl><dd>所在城市<input type="text" name="companyCity" value="请输入您所在的城市" onfocus="if (this.value == '请输入您所在的城市') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您所在的城市';}"/></dd></dl>
	    				<dl><dd class="button"><input type="button" id="joinReg" value="确认提交"/></dd> <dd class="joinUs_text_supply">注意：登录密码默认为手机号</dd></dl>
    				</form>
    			</div>
    			
    			
    		</div>
    	</div>
  </body>
</html>
