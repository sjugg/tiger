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
    
    <title>My JSP 'addClassicCase.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
  	<script language="JavaScript" type="text/javascript">
		function up(index){
			var url = "upload/toUpload2?picIndex="+index;
			var t="150";
		    var l="200";
		    var w="380";
		    var h="400";
		    openWin(url,t,l,w,h);
		}
		function addInput(){
			var len = $("#inputUl li.liId").length;
			var strLiPic = "<li class='liId'><input type='text' name='casepicturePicture' id='upFile"+len+"'/><input type='button' value='上传' onclick='up("+len+")'/></li>"
			var strLiInfo = "<li><input type='text' name='casepictureInfo'/></li>";
			$("#inputUl").append(strLiPic+strLiInfo);
		}
	
	</script>
  </head>
  <body>
    	<form action="admin/classicCase/addClassicCase" method="post">
    		<ul id="inputUl">
	    	
	    	<li>名称<input type="text" name="classiccaseName"/></li>
	    	<li>描述（可为空）<input type="text" name="classiccaseInfo"/></li>
	    	<li>主图片<input type="text" name="classiccasePicture" id="upFile"/>
	    	<input type="button" value="上传" onclick="up()"/></li>
	    	<li><select name="classiccaseHouseType">
	    		 <c:forEach items="${housetypeList}" var="housetype">
	    		<option value="${housetype.housetypeId }">${housetype.housetypeName }</option>
	    		</c:forEach>
	    	</select></li>
	    	<li><select name="classiccaseAcreage">
	    		 <c:forEach items="${houseacreageList}" var="houseacreage">
	    		<option value="${houseacreage.houseacreageId }">${houseacreage.houseacreageName }</option>
	    		</c:forEach>
	    	</select></li>
	    	<li>实际面积：<input value="" name="classiccaseLarge"/></li>
	    	<li>首页显示顺序序号：<select name="classiccaseIndex">
	    		<option value="0">不显示在首页</option>
	    		<option value="1">第一位</option>
	    		<option value="2">第二位</option>
	    		<option value="3">第三位</option>
	    		<option value="4">第四位</option>
	    	</select></li>
	    	<li>客厅：<select name="classiccaseParlourType">
	    		<option value="一厅">一厅</option>
	    		<option value="二厅">二厅</option>
	    	</select></li>
	    	<li>厨房：<select name="classiccaseKitchenType">
	    		<option value="一厨">一厨</option>
	    		<option value="二厨">二厨</option>
	    	</select></li>
	    	<li>卫生间：<select name="classiccaseToiletType">
	    		<option value="一卫">一卫</option>
	    		<option value="二卫">二卫</option>
	    	</select></li>
	    	<li><select name="classiccaseStyle">
	    		 <c:forEach items="${housestyleList}" var="housestyle">
	    		<option value="${housestyle.housestyleId }">${housestyle.housestyleName }</option>
	    		</c:forEach>
	    	</select></li>
	    	<li class="liId">图片1<input type="text" name="casepicturePicture" id="upFile0"/>
	    	<input type="button" value="上传" onclick="up(0)"/></li>
	    	<li><input type="text" name="casepictureInfo"/></li>
	    	<li class="liId">图片2<input type="text" name="casepicturePicture" id="upFile1"/>
	    	<input type="button" value="上传" onclick="up(1)"/></li>
	    	<li><input type="text" name="casepictureInfo"/></li>
	    	<li class="liId">图片3<input type="text" name="casepicturePicture" id="upFile2"/>
	    	<input type="button" value="上传" onclick="up(2)"/></li>
	    	<li><input type="text" name="casepictureInfo"/></li>
	    	</ul>
	    	<input type="submit" value="提交"/><input type="button" onclick="addInput();" value="增加"/>
    	</form>
  </body>
</html>
