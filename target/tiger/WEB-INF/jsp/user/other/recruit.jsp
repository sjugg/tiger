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
    
    <title>My JSP 'recruit.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/recruit.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script type="text/javascript">
  

  		$(function(){
  			$("#recruit tr .td-4 img").click(function(){
	  			if($(this).parent().parent().next(".detail").css("display") == "none"){
	  				$(this).attr("src","images/user/up.png");
	  				$(this).parent().parent().next(".detail").css("display","");
	  			}else if($(this).parent().parent().next(".detail").css("display") == "table-row"){
	  				$(this).attr("src","images/user/down.png");
	  				$(this).parent().parent().next(".detail").css("display","none");
	  			}else if($(this).parent().parent().next(".detail").css("display") == "block"){
	  				$(this).parent().parent().next(".detail").css("display","none");
	  			}
  			});
  		}); 
  		
  		
  	
  	</script>
  </head>
  <body>
    	 <div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
		</div>
		<div id="body">
			<div id="recruit_photo">
				<img src="images/user/recruit_photo_img.jpg" alt="" />
			</div>
			<div id="center">
				<div id="recruit">
					<div class="title"><h1>职位列表</h1><span>职位长期招聘，欢迎投递简历至：lbr@yuhedream.com</span></div>
					<div class="list">
						<table>
						<tr class="title">
							<th class="th-1">职位名称</th>
							<th class="th-2">工作职能</th>
							<th class="th-3">工作地点</th>
							<th class="th-4">技能</th>
						</tr>
						<tr id="tr-1">
							<td class="td-1">项目经理</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-2">
							<td class="td-1">Java开发工程师</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-3">
							<td class="td-1">高级室内设计师</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-4">
							<td class="td-1">平面设计师</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-5">
							<td class="td-1">营销经理</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-6">
							<td class="td-1">材料经理</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-7">
							<td class="td-1">施工技术员</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						<tr id="tr-8">
							<td class="td-1">财务</td><td class="td-2">开发</td><td class="td-3">江苏盐城</td><td class="td-4"><img src="images/user/down.png" alt="" /></td>
						</tr>
						<tr class="detail" style="display:none;">
							<td colspan="4">
								<div class="info">
									<h1>职位责任：</h1>
									<p>1、负责云豹装饰网站、APP系统前后台的功能、交互界面及流程原型设计；</p>
									<p>2、负责与需求方了解需求，提供产品策划方案，撰写产品需求文档；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
								<div class="line"></div>
								<div class="info">
									<h1>职位要求：</h1>
									<p>1、3年以上互联网产品工作经验；</p>
									<p>2、有很强的逻辑能力、需求产品分析能力、产品规划能力及数据分析能力；</p>
									<p>3、跟踪上线产品运营情况，并根据数据改进产品，更新产品；</p>
									<p>4、跟踪、整理用户反馈，长期跟踪需求方需求，根据反馈改进产品。</p>
								</div>
							</td>
						</tr>
						</table>
					
					
					</div>
				</div>
			</div>
		</div>
  </body>
</html>
