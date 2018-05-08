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
			var url = "<%=path %>/upload/toUpload2?picIndex="+index;
			var t="150";
		    var l="200";
		    var w="380";
		    var h="400";
		    openWin(url,t,l,w,h);
		}
		function addInput(){
			var len = $("#inputUl li.liId").length;
			var len1 = len+1;
			var strLiPic = "<li class='liId'>图片"+len1+"<input type='text' name='acmedecorationpicPic' id='upFile"+len+"'/><input type='button' value='上传' onclick='up("+len+")'/></li>"
			var strLiInfo = "<li><input type='text' name='acmedecorationpicName'/></li><li><input type='text' name='acmedecorationpicInfo'/></li>";
			$("#inputUl").append(strLiPic+strLiInfo);
		}
	
	</script>
  </head>
  <body>
    	<form action="admin/acmedecoration/addAcmedecoration" method="post">
    		<ul id="inputUl">
	    	<li>名称<input type="text" name="acmedecorationName"/></li>
	    	<li>主图片<input type="text" name="acmedecorationMaxpic" id="upFile"/>
	    	<input type="button" value="上传" onclick="up()"/></li>
	    	<li>主图片1<input type="text" name="acmedecorationPic" id="upFile98"/>
	    	<input type="button" value="上传" onclick="up(98)"/></li>
	    	<li>主图片2<input type="text" name="acmedecorationMinpic" id="upFile99"/>
	    	<input type="button" value="上传" onclick="up(99)"/></li>
	    	<li>描述<input type="text" name="acmedecorationInfo"/></li>
	    	
	    	<li class="liId">图片1<input type="text" name="acmedecorationpicPic" id="upFile0"/>
	    	<input type="button" value="上传" onclick="up(0)"/></li>
	    	<li><input type="text" name="acmedecorationpicName"/></li>
	    	<li><input type="text" name="acmedecorationpicInfo"/></li>
	    	<li class="liId">图片2<input type="text" name="acmedecorationpicPic" id="upFile1"/>
	    	<input type="button" value="上传" onclick="up(1)"/></li>
	    	<li><input type="text" name="acmedecorationpicName"/></li>
	    	<li><input type="text" name="acmedecorationpicInfo"/></li>
	    	<li class="liId">图片3<input type="text" name="acmedecorationpicPic" id="upFile2"/>
	    	<input type="button" value="上传" onclick="up(2)"/></li>
	    	<li><input type="text" name="acmedecorationpicName"/></li>
	    	<li><input type="text" name="acmedecorationpicInfo"/></li>
	    	</ul>
	    	<input type="submit" value="提交"/><input type="button" onclick="addInput();" value="增加"/>
    	</form>
  </body>
</html>
