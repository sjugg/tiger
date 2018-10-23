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
	<link rel="stylesheet" type="text/css" href="css/user/sweet-alert.css">
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/sweetAlert/js/sweet-alert.min.js" type="text/javascript"></script>
        <!--[if IE]>
	        <style >
	        	.homeDressScene_body_list_top_left .state {
					top:-155px;
					left:-53px;
				}
	        </style>
        <![endif]-->
  </head>
  	<script type="text/javascript">
  		$(function() {
		$('#orderBotton').click(function() {
			var tel = $('input[name="homeDressSceneTel"]').val();
			var name = $('input[name="homeDressSceneUsername"]').val();
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
							window.location.href="/index";
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
  <body>
    	<!-- <div id="header">
			<iframe allowTransparency="true" frameborder="no" border="0" scrolling="no" width=100% height=110 src="header"></iframe>
		</div> -->
		<jsp:include   page="../../header.jsp" flush="true"/>
		
		<div id="body">
		
			<div class="homeDressScene_top_photo">
				<img alt="" src="images/user/homwDresssScene_top_photo_img.jpg"/>
				<div class="homeDressScene_top_photo_form">
					<h1>预约参观</h1>
					<form action=" " method="post">
						<input type="text" class="text" name="homeDressSceneUsername" value="请输入您的称呼" onfocus="javascript:if(this.value=='请输入您的称呼')this.value='';"/>
						<input type="text" class="text" name="homeDressSceneTel" value="请输入您的手机号码" onfocus="javascript:if(this.value=='请输入您的手机号码')this.value='';"/>
						<input id="orderBotton" class="submit" value="立即预约"/>
					</form>
				</div>
			</div>
			<div id="center">
			<div class="homeDressScene_body">
				<div class="homeDressScene_body_title">
					<div class="homeDressScene_body_title_top">
						<div class="homeDressScene_body_title_left_line title">
							<p></p>
						</div>
						<div class="homeDressScene_body_title_text  title">
							<h1>家装记录</h1>
						</div>
						<div class="homeDressScene_body_title_right_line title">
							<p></p>
						</div>
					</div>
					<div class="homeDressScene_body_title_bottom">
						<span>记录家装生活   记录家</span>
					</div>
				</div>
				<div class="homeDressScene_body_list">
					<div class="homeDressScene_body_list_top">
						<div class="homeDressScene_body_list_top_left">
							<div class="img"> <img src="images/user/homeDressScene_body_list_top_left_touxiang.png"/></div>
							<div class="info">
								<p><span>张依的家</span></p>
								<p><span>户型：</span>三居室</p>
								<p><span>面积：</span>130.0m²</p>
							</div>
							<div class="state">施工中...</div>
						</div>
						<div class="homeDressScene_body_list_top_right">
							<ul>
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
					
					</div>
					<div class="homeDressScene_body_list_bottom">
						<div class="left"></div>
						<div class="center"><a href="##">查看<<</a></div>
						<div class="right"></div>
					</div>
					<div class="homeDressScene_body_list_top">
						<div class="homeDressScene_body_list_top_left">
							<div class="img"> <img src="images/user/homeDressScene_body_list_top_left_touxiang.png"/></div>
							<div class="info">
								<p><span>张依的家</span></p>
								<p><span>户型：</span>三居室</p>
								<p><span>面积：</span>130.0m²</p>
							</div>
							<div class="state">施工中...</div>
						</div>
						<div class="homeDressScene_body_list_top_right">
							<ul>
								<li class="img pressed">水电改造</li>
								<li class="line"></li>
								<li class="img pressed">防水施工</li>
								<li class="line"></li>
								<li class="img pressed">瓦工项目</li>
								<li class="line"></li>
								<li class="img">木工项目</li>
								<li class="line"></li>
								<li class="img">油工项目</li>
								<li class="line"></li>
								<li class="img">安装项目</li>
							</ul>
						</div>
					
					</div>
					<div class="homeDressScene_body_list_bottom">
						<div class="left"></div>
						<div class="center"><a href="##">查看<<</a></div>
						<div class="right"></div>
					</div>
					<div class="homeDressScene_body_list_top">
						<div class="homeDressScene_body_list_top_left">
							<div class="img"> <img src="images/user/homeDressScene_body_list_top_left_touxiang.png"/></div>
							<div class="info">
								<p><span>张依的家</span></p>
								<p><span>户型：</span>三居室</p>
								<p><span>面积：</span>130.0m²</p>
							</div>
							<div class="state">施工中...</div>
						</div>
						<div class="homeDressScene_body_list_top_right">
							<ul>
								<li class="img pressed">水电改造</li>
								<li class="line"></li>
								<li class="img pressed">防水施工</li>
								<li class="line"></li>
								<li class="img">瓦工项目</li>
								<li class="line"></li>
								<li class="img">木工项目</li>
								<li class="line"></li>
								<li class="img">油工项目</li>
								<li class="line"></li>
								<li class="img">安装项目</li>
							</ul>
						</div>
					
					</div>
					<div class="homeDressScene_body_list_bottom">
						<div class="left"></div>
						<div class="center"><a href="##">查看<<</a></div>
						<div class="right"></div>
					</div>
					<div class="homeDressScene_body_list_top">
						<div class="homeDressScene_body_list_top_left">
							<div class="img"> <img src="images/user/homeDressScene_body_list_top_left_touxiang.png"/></div>
							<div class="info">
								<p><span>张依的家</span></p>
								<p><span>户型：</span>三居室</p>
								<p><span>面积：</span>130.0m²</p>
							</div>
							<div class="state">施工中...</div>
						</div>
						<div class="homeDressScene_body_list_top_right">
							<ul>
								<li class="img pressed">水电改造</li>
								<li class="line"></li>
								<li class="img pressed">防水施工</li>
								<li class="line"></li>
								<li class="img pressed">瓦工项目</li>
								<li class="line"></li>
								<li class="img pressed">木工项目</li>
								<li class="line"></li>
								<li class="img pressed">油工项目</li>
								<li class="line"></li>
								<li class="img pressed">安装项目</li>
							</ul>
						</div>
					
					</div>
					<div class="homeDressScene_body_list_bottom">
						<div class="left"></div>
						<div class="center"><a href="##">查看<<</a></div>
						<div class="right"></div>
					</div>
					<iframe allowTransparency="true" frameborder="no" border="0" scrolling="no" width=100% height=300 src="https://mapi.alipay.com/gateway.do?_input_charset=UTF-8&currency=HKD&notify_url=http://msc.koolyun.cn:8080/msc-receiver/alipayoversea/notify&order_gmt_create=2018-05-25 14:12:03&order_valid_time=36000&out_trade_no=1527228723888&partner=2088131118506275&payment_inst=ALIPAYCN&product_code=NEW_WAP_OVERSEAS_SELLER&qr_pay_mode=4&qrcode_width=200&secondary_merchant_id=A80001&secondary_merchant_industry=7011&secondary_merchant_name=muku&service=create_forex_trade&sign=ae57cbeaa21c12fc0e6af29ea5763871&sign_type=MD5&subject=iphone6&total_fee=0.01"></iframe>
				</div>
			</div>
		</div>
		</div>
  </body>
</html>
