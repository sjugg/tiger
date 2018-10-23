<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	/* String uploadPath ="http://localhost/yuhe/"; */
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head><title>云象装饰</title>
		<meta http-equiv="pragma" content="no-cache"/>
		<meta http-equiv="cache-control" content="no-cache"/>
		<meta http-equiv="expires" content="0"/>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
		<meta http-equiv="description" content="This is my page"/>
		<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
		<link rel="stylesheet" type="text/css" href="css/user/index.css"/>
		<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/jquery.leanModal.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/json2.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/user/switchPic.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/user/switchPic2.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=basePath%>/js/user/index.js" type="text/javascript"></script>
	<link href="css/user/header.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/user/header.js"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/sweetAlert/js/sweet-alert.min.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/user/sweet-alert.css">
	<style>
		#dialoginput{
			width: 58%;
		    height: 40px;
		    line-height: 40px;
		    border: none;
		    border-radius: 5px;
		    margin-left: 5%;
		    padding: 2px 5%;
		}
		/* background-repeat: round; */
		#dialog {
		    background-image: url(images/user/bak.jpg);
    		background-repeat: repeat-x;
   			background-size: 93%;
			height:23%;
			left:1%;
			margin:-2% 20% 0 20%px;
			padding:1px;
			position:fixed !important; /* 浮动对话框 */
			position:absolute;
			top:75%;
			width:98%;
			z-index:5;
			border-radius:5px;
			display:none;
		}
		#dialog a{
		color:#ffffff;font-size:21px;
		text-align:right;
		margin-left: 95%;
		font-weight:bold;
		}
		#dialog p {
		margin:0 0 12px;
		height:24px;
		line-height:24px;
		background:#CCCCCC;
		}
		#dialog p.close {
		text-align:right;
		padding-right:10px;
		}
	</style>
	<script>
	$(document).ready(function(){
	 showBg();
	});
	</script>
	<script type="text/javascript">
	//显示灰色 jQuery 遮罩层
	function showBg() {
	  var bh = $("body").height();
	  var bw = $("body").width();
	  $("#fullbg").css({
	    height:bh,
	    width:bw,
	    display:"block"
	  });
	 $("#dialog").show();
	}
	//关闭灰色 jQuery 遮罩
	function closeBg() {
	$("#fullbg,#dialog").hide();
	}
	$(function() {
		$('#orderBotton').click(function() {
			var tel = $('input[name="tel"]').val();
			var name = $('input[name="name"]').val();
			if("请输入您的姓名"==name){
				swal({
					title: "温馨提示!",
                    text: "请输入姓名!",
                    type: "warning",
                    confirmButtonText: "关 闭"
				});
				return false;
			}
			if("请输入您的电话号码"==tel){
				swal({
					title: "温馨提示!",
                    text: "请输入电话号码!",
                    type: "warning",
                    confirmButtonText: "关 闭"
				});
				return false;
			}
			$.ajax({
				url:"/homeDressScene/order",
				data:{
					tel: tel,
					name: name
				},
				dataType:"JSON",
				type:"POST",
				success:function(data) {
					if(data===1) {
						swal({
							title: "温馨提示!",
		                    text: "预约成功!",
		                    type: "success",
		                    confirmButtonText: "关 闭"
						},function() {
							closeBg();
						});
					}else if(data===0) {
						swal({
							title: "温馨提示!",
		                    text: "该手机号已经预约过，无需再约!",
		                    type: "warning",
		                    confirmButtonText: "关 闭"
						});
					} else {
						swal({
							title: "温馨提示!",
		                    text: "预约失败!",
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
	</head>
	<body>
		<div class="header">
    		<div class="header_top">
    			<div class="header_top_text">
    				<div class="header_top_text_left">
    					<p>当前城市：[${city}]</p>
    				</div>
    				<div class="header_top_text_right">
    					<ul class="main_ul">
    					<li class="main_li empty"><a href="/j_spring_security_logout" >后台退出</a></li>
    					<li class="main_li empty"><a href="/admin/index" >后台入口</a></li>
	    					<li class="main_li">
	    							<a>关注微信</a>
	    							<ul class="service">
	    								<li class="service_1">
	    									<img src="images/user/gzh.jpg" hight="150%" width="150%">
	    								</li>
	    							</ul>
	    					</li>
    						<li class="main_li">
    							<a>客户服务</a>
    							<ul class="service">
    								<li class="service_1">
    									<p>商务合作</p>
    									<p>18068889986</p>
    								</li>
    								<li>
    									<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=825451498&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:825451498:51" hight="100%" width="100%" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
    								</li>
    								</ul>
    						</li>
    						
    						<c:choose>
	    						<c:when test="${empty userInfo}">
										<li class="main_li empty"><a href="register" >注册</a></li>
										<li class="main_li empty"><a href="tologin" >登录</a></li>
	    						</c:when>
	    						<c:otherwise>
	    							<li class="main_li">
		    							<a href="user/userNote">我的消息<c:if test="${not empty noteInfo}">(1)</c:if></a>
		    							<!-- <ul class="message">
		    								<li><a href="user/userNote"/>通知</li>
		    							</ul> -->
		    						</li>
		    						<li class="main_li">
		    							<a>欢迎：${userInfo.name}</a>
		    							<ul class="userinfo">
		    								<li><a href="user/userHomePage"/>我的中心</li>
		    								<li><a href="user/logout?tel=${userInfo.tel}"/>退出</li>
		    							</ul>
		    							<span class="ico"></span>
		    						</li>
	    						</c:otherwise>
    						</c:choose>
    					</ul>
    				</div>
    			</div>
    		</div>
    		<div class="header_bottom">
    			<div class="header_bottom_left">
    				<img src="images/user/logo.png" alt="" />
    			</div>
    			<div class="header_bottom_right">
    				<ul class="nav-main" id="nav-main_computer">
				        <li id="li-0"><a href="index" target="_parent"> 首页</a></li>
						<li id="li-1"><a href="decoration/decorationService" >装修服务</a></li>
						<li id="li-2"><a href="classiccase/classicCase" >经典案例</a></li>
						<li id="li-3"><a href="decoration/strategy" >装修攻略</a></li>
						<li id="li-4"><a href="homeDressScene/homeDressScene" >家装现场</a></li>
						<li id="li-5"><a href="/smartHome/smartHome" >智能家居</a></li>
						<li id="li-5"><a href="/material" >材料品牌</a></li>
						<li id="li-6"><a href="/joinUs" >商家入驻</a></li>
					</ul>
					<ul class="nav-main" id="nav-main_mobile" style="display:none">
				        <li id="li-0"><a href="index" target="_parent"> 首页</a></li>
						<li id="li-1"><a href="decoration/decorationService" >装修服务</a></li>
						<li id="li-2"><a href="classiccase/classicCase" >经典案例</a></li>
						<li id="li-3"><a href="decoration/strategy" >装修攻略</a></li>
						<li id="li-4"><a href="homeDressScene/homeDressScene" >家装现场</a></li>
						<li id="li-5"><a href="/smartHome/smartHome" >智能家居</a></li>
						<li id="li-5"><a href="/material" >材料品牌</a></li>
						<li id="li-6"><a href="/joinUs" >商家入驻</a></li>
					</ul>
    			
    			</div>
    		</div>
		</div>
		<!-- 加载默认的弹出框 -->
		<div>
		<div id="dialog">
			<div>
				<a href="#" rel="external nofollow" onclick="closeBg();">关闭</a>
				<div>
					<input name="name" value="请输入您的姓名"
						onfocus="if (this.value == '请输入您的姓名') {this.value = '';}"
						onblur="if (this.value == '') {this.value = '请输入您的姓名';}"
						style="width: 10%; height: 28px; line-height: 40px; border: none; border-radius: 9px; margin-left: 48%; padding: 2px 4%;"></input>
				</div>
				<div>&nbsp;</div>
				<div>
					<input name="tel" value="请输入您的电话号码"
						onfocus="if (this.value == '请输入您的电话号码') {this.value = '';}"
						onblur="if (this.value == '') {this.value = '请输入您的电话号码';}"
						style="width: 10%; height: 28px; line-height: 40px; border: none; border-radius: 9px; margin-left: 48%; padding: 2px 4%;"></input>
					<img src="images/user/kf.png"
						style="width: 6%; float: right; margin-right: 10%; margin-top: -4%;"
						alt=""  onclick='window.open("http://wpa.qq.com/msgrd?v=3&uin=825451498&site=qq&menu=yes")'/>
				</div>
				<div>
					<img src="images/user/bt.png" id="orderBotton"
						style="width: 12%; float: right; margin-right: 3%; margin-top: -3%;"
						alt="" />
				</div>
			</div>
		</div>
	</div>
	<!-- head end  -->
		<div id="userFeedBack" style="display:none;"> 
			<iframe src="userFeedBack" id="userFeedBackIframe" width="100%" height="529" frameborder="0" scrolling="no"></iframe>
			<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
		</div>
		<div id="buildingBespeakShow" style="display:none;"> 
			<iframe src="buildingBespeakShow" id="buildingBespeakShowIframe" width="100%" height="529" frameborder="0" scrolling="no"></iframe>
			<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
		</div>
		<div id="IndexServiceWindow">
			<ul>
				<li><a target="_blank"  href="http://wpa.qq.com/msgrd?v=3&uin=825451498&site=qq&menu=yes"><img src="images/user/IndexServiceWindow_img_1.jpg" alt="" /></a></li>
				<li><a target="_blank"  href="http://wpa.qq.com/msgrd?v=3&uin=825451498&site=qq&menu=yes"><img src="images/user/IndexServiceWindow_img_2.jpg" alt="" /></a></li>
				<li><a href="homeDressScene/homeDressScene"><img src="images/user/IndexServiceWindow_img_3.jpg" alt="" /></a></li>
			</ul>
		</div>
		<div id="quotationShow" style="display:none;">
			<div class="quotationShow">
			<div class="quotationShow_top">
				<h1>免费获取报价</h1>
				<p>今天已有<span>2341</span>位业主获取了装修报价</p>
			</div>
			<div class="quotationShow_bottom">
				 <div class="quotationShow_bottom_left">
				 	<img src="images/user/quotationShow_bottom_left_ico.png" alt="" />
				</div>
				<div class="quotationShow_bottom_right">
					<p class="name totalCost">您家的装修预算为  <span>0</span> 元</p>
					<div class="content">
						<p class="materialCost">材料费：<span>0</span> 元</p>
						<p class="personCost">人工费：<span>0</span> 元</p>
						<p class="designCost">设计费：<span>0</span> 元<b>立省 <span></span> </b></p>
						<p class="qualityInspectionCost">质检费：<span>0</span> 元<b>立省 <span></span> </b></p>
					</div>
				    <p class="bottom_top">*报价有疑问，稍后家装顾问将来电帮您解答。</p>
				    <p class="bottom_bottom">*该报价为毛坯半包价，实际家装报价以量房实测为准。</p>
				</div>
			</div>
			</div>
			<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
		</div>
		<!-- <div id="header">
			<iframe allowTransparency="true" frameborder="no" border="0" name="header_frame" scrolling="no" width=100% height=210 src="header"></iframe>
		</div> -->
		<div id="body">
			 <div id="photo">
		       <div class="center_photo">
			       <div class="banner">
						<ul></ul>
						<ol></ol>
						<i class="left"></i><i class="right"></i>
					</div>
		       </div>
       		</div> 
			<div id="center">
				<div id="center_1">
					<ul>
						<li class="center_1 center_1_1"><a href="design"><img
								src="images/user/index_center_center_1_1.jpg" alt="免费设计" /></a></li>
						<li class="center_1 center_1_2"><a href="renovation"><img
								src="images/user/index_center_center_1_2.jpg" alt="装修工艺" /></a></li>
						<li class="center_1 center_1_3"><a href="decoration/decorationSupport"><img
								src="images/user/index_center_center_1_3.jpg" alt="装修保障" /></a></li>
					</ul>
				</div>
				<div id="center_2">
					<div class="center_2_title">
						<div class="center_2_title_top">
							<div class="center_2_title_left_line title">
								<p></p>
							</div>
							<div class="center_2_title_text  title">
								<h1>经典案例</h1>
							</div>
							<div class="center_2_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_2_title_bottom">
							<span>真实呈现 来看看家</span>
						</div>
					</div>
					<div class="center_2_content_1">
						<div class="center_2_content_1_title">
							<p>三室一厅 / 120平米 / 现代简约 / 北欧恬静 / 查看更多 ></p>
						</div>
						<div class="center_2_content_1_body">
							<div class="center_2_content_1_body_left">
								<a href="classiccase/classicCaseDetail?id=1"><img alt="案例1"
										src="images/user/index_center_2_content_1_body_left_img.jpg"/>
								<div class="bg"></div>
								<div class="name"><p>北欧恬静系小窝</p></div></a>
							</div>
							<div class="center_2_content_1_body_right">
								<div class="center_2_content_1_body_right_top">
									<a href="classiccase/classicCaseDetail?id=2"><img alt="案例2"
										src="images/user/index_center_2_content_1_body_right_top_img.jpg"/>
									<div class="bg"></div>
									<div class="name"><p>典雅大气中式风</p></div></a>
								</div>
								<div class="center_2_content_1_body_right_bottom">
									<div class="center_2_content_1_body_right_bottom_left">
										<a href="classiccase/classicCaseDetail?id=3"><img alt="案例3"
											src="images/user/index_center_2_content_1_body_right_bottom_left_img.jpg"/>
										<div class="bg"></div>
										<div class="name"><p>现代简约有格调</p></div></a>
									</div>
									<div class="center_2_content_1_body_right_bottom_right">
	
										<a href="classiccase/classicCase?id=4"><img alt="案例4"
											src="images/user/index_center_2_content_1_body_right_bottom_right_img.jpg"/>
										<div class="bg"></div>
										<div class="name"><p>简美凤，梦想中的家</p></div></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="center_2_content_2">
						<div class="center_2_content_2_title">
							<p>热装楼盘/预约参观</p>
	
						</div>
						<div class="center_2_content_2_body" id="buildingBespeakShow_box">
							<c:forEach items="${buildingList }" var="building">
							
							<div class="center_2_content_2_body_1">
								<div class="img">
									<img src="${building.buildingPic }"/>
								</div>
								<div class="text">
									<div class="text_left">
										<div class="p1">
											<p>${building.buildingName }</p>
										</div>
										<div class="p2">
											<p>已预约：${building.buildingTotaluser }户 已完结：${building.buildingUsered }户</p>
										</div>
									</div>
									<div class="text_right" id="index_bespeak_ico">
										<input type="hidden" value="${building.buildingId }"/>
										<img
											src="images/user/index_center_2_content_2_body_1_text_text_right_img.jpg" />
									</div>
								</div>
							</div>
							</c:forEach>
							
						</div>
					</div>
				</div>
				<div id="center_3">
					<div class="center_3_title">
						<div class="center_3_title_top">
							<div class="center_3_title_left_line title">
								<p></p>
							</div>
							<div class="center_3_title_text title">
								<h1>装修报价</h1>
							</div>
							<div class="center_3_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_3_title_bottom">
							<span>给您最真实的装修报价</span>
						</div>
					</div>
					<div class="center_3_body"  id="quotationShow_box">
						<div class="center_3_body_left">
							<img src="images/user/index_center_3_body_left_img.jpg" />
						</div>
						<div class="center_3_body_right">
							<div class="center_3_body_right_title">
								<p class="p1">装修需要多少钱？</p>
								<p class="p2">
									目前已有<span>${quoedpriceSize  }</span>人获取装修报价
								</p>
							</div>
							<div class="center_3_body_right_form">
								<form  class="indexForm" onsubmit="return false" action="##" method="post">
									<div class="row_1">
										<div class="row_1_title">
											<div class="title">装修城市</div>
											<div class="title">房屋面积</div>
											<div class="title">您的姓名</div>
											<div class="title">您的手机</div>
										</div>
										<div class="row_1_input">
											<input class="input" type="text" name="quotedpriceAddress" value="盐城" /> <input
												class="input" type="text" name="quotedpriceHouseAcreage" id="quotedpriceHouseAcreage" value="请输入房屋面积" onfocus="if (this.value =='请输入房屋面积') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入房屋面积';}" /> <input
												class="input" type="text" name="quotedpriceUsername" id="quotedpriceUsername" value="请输入您的姓名" onfocus="if (this.value == '请输入您的姓名') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您的姓名';}"/> <input
												class="input" type="text" name="quotedpriceTel" id="quotedpriceTel" value="请输入您的手机" onfocus="if (this.value == '请输入您的手机') {this.value = '';}" onblur="if (this.value == '') {this.value = '请输入您的手机';}" />
										</div>
									</div>
									<div class="row_2">
										<div class="row_2_title">
											<div class="title">房屋房型</div>
										</div>
										<div class="row_2_input">
											<select class="input" name="quotedpriceBedroom">
												<option>一室</option>
												<option>二室</option>
												<option>三室</option>
												<option>四室</option>
											</select> 
											<select class="input"  name="quotedpriceParlour">
												<option>一厅</option>
												<option>二厅</option>
											</select> 
											<select class="input" name="quotedpriceKitchen">
												<option>一厨</option>
												<option>二厨</option>
											</select> 
											<select class="input" name="quotedpriceToilet">
												<option>一卫</option>
												<option>二卫</option>
											</select>
											<div class="img1 center_3_jiantou" style="display:block">
												<img
													src="images/user/index_center_3_body_right_form_select_jiantou.png" />
											</div>
											<div class="img2 center_3_jiantou" style="display:block">
												<img
													src="images/user/index_center_3_body_right_form_select_jiantou.png" />
											</div>
											<div class="img3 center_3_jiantou" style="display:block">
												<img
													src="images/user/index_center_3_body_right_form_select_jiantou.png" />
											</div>
											<div class="img4 center_3_jiantou" style="display:block">
												<img
													src="images/user/index_center_3_body_right_form_select_jiantou.png" />
											</div>
										</div>
									</div>
									<div class="row_3">
										<div class="row_3_input" >
											<input class="input" id="row_3_input_submit"  type="submit" value="获取报价"/>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div id="center_4">
					<div class="center_4_title">
						<div class="center_4_title_top">
							<div class="center_4_title_left_line title">
								<p></p>
							</div>
							<div class="center_4_title_text title">
								<h1>服务流程</h1>
							</div>
							<div class="center_4_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_4_title_bottom">
							<span>设计、主材、施工一站式整装服务，省时省力更省钱</span>
						</div>
					</div>
					<div class="center_4_body">
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_1.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_2.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_3.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_4.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_5.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_6.jpg"/>
						</div>
						<div class="center_4_body_img">
							<img src="images/user/index_center_4_body_img_7.jpg"/>
						</div>
					</div>
				</div>
				<div id="center_5">
					<div class="center_5_title">
						<div class="center_5_title_top">
							<div class="center_5_title_left_line title">
								<p></p>
							</div>
							<div class="center_5_title_text title">
								<h1>极致装修</h1>
							</div>
							<div class="center_5_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_5_title_bottom">
							<span>金牌团队，为你个性化定制</span>
						</div>
					</div>
					<div class="center_5_body">
						<div class="center_5_body_top">
							
							<div class="silder" id="silder" style="dislpay:none;">
								<div class="center_5_body_top_left">
									<a href=""><img class="center_5_body_top_left_img" src="" /></a>
								</div>
								<ul></ul>
								<i class="left"></i><i class="right"></i>
								<div class="center_5_body_top_right">
									<a href=""><img src="" class="center_5_body_top_right_img" /></a>
								</div>
							</div>
	
						</div>
						<div class="center_5_body_bottom">
							<img src="images/user/index_center_5_body_bottom_img.jpg" />
						</div>
					</div>
				</div>
				<div id="center_6">
					<div class="center_6_title">
						<div class="center_6_title_top">
							<div class="center_6_title_left_line title">
								<p></p>
							</div>
							<div class="center_6_title_text title">
								<h1>装修攻略</h1>
							</div>
							<div class="center_6_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_6_title_bottom">
							<span>关于装修你想知道的，这里都有</span>
						</div>
					</div>
					<div class="center_6_body">
						<div class="center_6_body_title">
							<p>三室一厅 / 120平米 / 现代简约 / 北欧恬静 / 查看更多 ></p>
						</div>
						
						<div class="center_6_body_content">
						<c:forEach items="${strategyList }" var="strategy" begin="0" end="2" step="1">
						
							<div class="center_6_body_content_info">
								
								<div class="center_6_body_content_info_img">
									<a href="decoration/strategyDetail?id=${strategy.strategyId }">
									<img src="${strategy.strategyPicture}"/>
									</a>
								</div>
								<div class="center_6_body_content_info_text">
									<a href="decoration/strategyDetail?id=${strategy.strategyId }">
									<p>${strategy.strategyInfo }</p></a>
								</div>
							</div>
						</c:forEach>
						</div>
						
					</div>
				</div>
				<div id="center_7">
					<div class="center_7_title">
						<div class="center_7_title_top">
							<div class="center_7_title_left_line title">
								<p></p>
							</div>
							<div class="center_7_title_text title">
								<h1>合作品牌</h1>
							</div>
							<div class="center_7_title_right_line title">
								<p></p>
							</div>
						</div>
						<div class="center_7_title_bottom">
							<span>精选品牌，品质保障</span>
						</div>
					</div>
					<div class="center_7_body">
						<p class="center_7_body_img">
							<img src="images/user/index_center_7_body_img_1.jpg" /> <img
								src="images/user/index_center_7_body_img_2.jpg" /> <img
								src="images/user/index_center_7_body_img_3.jpg" /> <img
								src="images/user/index_center_7_body_img_4.jpg" />
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<iframe allowTransparency="true" frameborder="no" border="0" name="footer_frame" scrolling="no" width=100% height=240 src="footer"></iframe>
		</div>
	</body>
</html>
