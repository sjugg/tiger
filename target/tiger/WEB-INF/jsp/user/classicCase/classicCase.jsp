<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>

	<title>My JSP 'index.jsp' starting page</title>
	
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<link rel="stylesheet" type="text/css" href="css/user/classicCase.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/jquery.leanModal.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/json2.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/classicCase.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
		var dqPage = ${page.pageNum};
		var pageCount = ${page.pages};
		var nextPage = ${page.nextPage};
		var prePage = ${page.prePage};
		pageNum(dqPage,pageCount,prePage,nextPage);
		var counter = 0; 
		var pageStart = 0; 
		var pageSize = 3;
		continueLoad(pageStart, pageSize);
		$(document).on('click', '.acmedecorationList_more_a', function(){
		    counter ++;
		    pageStart = counter * pageSize;
		    continueLoad(pageStart, pageSize);
		});
	});
	</script>
</head>

<body>
	<div id="userFeedBack" style="display:none;"> 
			<iframe src="userFeedBack" id="userFeedBackIframe" width="100%" height="529" frameborder="0" scrolling="no"></iframe>
			<div class="modal_close"><img alt="" src="images/user/design_modal_close_ico.png"/></div>
		</div>
	<div id="header">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="header_frame" scrolling="no" width=100% height=110
			src="header"></iframe>
	</div>
	<div id="body">
	<div class="classicCase_photo">
			<img src="images/user/classicCase_photo_img.jpg"/>
		</div>
		<div id="center">
		 
			<div class="classicCase_category" id="categoryList">
				<div class="classicCase_category_1">
					<p class="title">户型：</p>
					<ul class="ul-1">
						<li class="all selected"><a>全部</a></li>
						<c:forEach  items="${housetypeList}" var="typeList">
						<li><a>${typeList.housetypeName }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="classicCase_category_2">
					<p class="title">风格：</p>
					<ul class="ul-2">
						<li class="all selected"><a>全部</a></li>
						<c:forEach  items="${housestyleList}" var="styleList">
						<li><a>${styleList.housestyleName }</a></li>
						</c:forEach>
					</ul>

				</div>
				<div class="classicCase_category_3">
					<p class="title">面积：</p>
					<ul class="ul-3">
						<li class="li-1 all selected"><a>全部</a></li>
						<c:forEach  items="${houseacreageList}" var="acreageList">
						<li><a>${acreageList.houseacreageName }</a>m²</li>
						</c:forEach>
					</ul>

				</div>
			</div>
			</div>
	
		<div class="classiccaseList" id="classiccaseList">
			
			
			<c:forEach items="${classiccaseList}" var="classic" >
				<input type="hidden" id="classiccaseStyle" value="${classiccaseUrlStyle }"/>
				<input type="hidden" id="classiccaseAcreage" value="${classiccaseUrlAcreage }"/>
				<input type="hidden" id="classiccaseType" value="${classiccaseUrlType }"/>
					<div class="list">
						<a href="classiccase/classicCaseDetail?id=${classic.classiccaseId}">
						<img src="${classic.classiccasePicture }" alt="" />
						<span class="name">${classic.classiccaseName }</span>
						<span class="attribute">
							${classic.classiccaseHouseType}${classic.classiccaseParlourType}${classic.classiccaseLarge}m²
						</span>
						</a>
					</div>		
				</c:forEach>
				
				<c:if test="${empty classiccaseList}">
					<input type="hidden" id="classiccaseStyle" value="${classiccaseUrlStyle }"/>
					<input type="hidden" id="classiccaseAcreage" value="${classiccaseUrlAcreage }"/>
					<input type="hidden" id="classiccaseType" value="${classiccaseUrlType }"/>
					<div style="height:200px;margin-top:20px;width:100%;line-height:300px;text-align:center;">
						<img src="images/user/classiccase_none_img.png"/>
					</div>
				</c:if>
				<c:if test="${not empty classiccaseList}">
				<div id="page"><ul></ul></div>
				</c:if>
				<%-- <div class="list_index">
					<c:if test="${not empty classiccaseList}">
						<div class="classiccase_title">
								<div class="text">
									<h1>经典案例</h1>
									<p class="line"></p>
								</div>
								<p class="line"></p>
						</div>
					</c:if>
					<c:forEach items="${classiccaseIndexList}" var="classicIndex" >
					<c:if test="${classicIndex.classiccaseIndex eq 1 }">
						<div class="index_1">
						<a href="classicCaseDetail?id=${classicIndex.classiccaseId}">
							<img src="${classicIndex.classiccasePicture }" alt="" />
							<p class="name">${classicIndex.classiccaseName }1</p></a>
						</div>
					
					</c:if>
					<c:if test="${classicIndex.classiccaseIndex eq 2 }">
						<div class="index_2">
						<a href="classicCaseDetail?id=${classicIndex.classiccaseId}">
							<img src="${classicIndex.classiccasePicture }" alt="" />
							<p class="name">${classicIndex.classiccaseName }2</p></a>
						</div>
					
					</c:if>
					<c:if test="${classicIndex.classiccaseIndex eq 3 }">
						<div class="index_3">
						<a href="classicCaseDetail?id=${classicIndex.classiccaseId}">
							<img src="${classicIndex.classiccasePicture }" alt="" />
							<p class="name">${classicIndex.classiccaseName }3</p></a>
						</div>
					
					</c:if>
					<c:if test="${classicIndex.classiccaseIndex eq 4 }">
						<div class="index_4">
						<a href="classicCaseDetail?id=${classicIndex.classiccaseId}">
							<img src="${classicIndex.classiccasePicture }" alt="" />
							<p class="name">${classicIndex.classiccaseName }3</p></a>
						</div>
					</c:if>
					</c:forEach>
				</div> --%>
				
			
		</div>	
		<div class="acmedecorationList">
				
					<div class="classiccase_title">
							<div class="text">
								<h1>极致系列</h1>
								<p class="line"></p>
							</div>
							<p class="line"></p>
					</div>
					<div class="content">
						
					</div>
					<div class="acmedecorationList_more"><a class="acmedecorationList_more_a">加载更多</a></div>
			</div>
	
	</div>
	
	<div id="footer">
		<iframe allowTransparency="true" frameborder="no" border="0"
			name="footer_frame" scrolling="no" width=100% height=240
			src="footer"></iframe>
	</div>
</body>
</html>
