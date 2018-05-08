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
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/user/classicCase.js"
		type="text/javascript"></script>

</head>

<body>
	<div id="body">
	<c:forEach items="${classiccaseList}" var="classic">
		<div id="center">
			<div class="classicCase_detail">
				<div class="h3"><h3>${classic.classiccaseName }</h3></div>
				<div class="classicCase_detail_step">
				 <c:forEach items="${casepictureList}" var="pic">
					<div class="step">
						<div class="photo">
						<img src="${pic.casepicturePicture }"/>
						</div>
						<div class="info">
							<p>${pic.casepictureInfo }</p>
						</div>
					</div>
					
					</c:forEach>
				</div>
			</div>
			
		</div>
		</c:forEach>
	</div>
</body>
</html>
