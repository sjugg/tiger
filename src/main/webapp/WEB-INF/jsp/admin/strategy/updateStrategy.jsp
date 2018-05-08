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
    
    <title>My JSP 'addStrategy.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link rel="stylesheet" type="text/css" href="css/user/basic.css"/>
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/basic.js" type="text/javascript"></script>
	<SCRIPT type="text/javascript" src="<%=basePath%>ueditor/ueditor.config.js"></SCRIPT>  
    <SCRIPT type="text/javascript" src="<%=basePath%>ueditor/ueditor.all.js"></SCRIPT>
	<script language="JavaScript" type="text/javascript">
		function up(index){
			var url = "upload/toUpload2?picIndex="+index;
			var t="150";
		    var l="200";
		    var w="380";
		    var h="400";
		    openWin(url,t,l,w,h);
		}
		$(function(){
			$("#selector").find("option[value='${strategyList.strategyKindsid }']").attr("selected",true);
		});
	</script>
  </head>
  <body style="width:900px;margin:0 auto;">
    <form action="admin/strategy/updateStrategy" method="post">
    	<select name="strategyKindsid" id="selector">
    	<c:forEach items="${strategykindsList}" var="kinds">
    	<option value="${kinds.strategykindsId }" >${kinds.strategykindsName }</option>
    	</c:forEach>
    	
    	</select><br/>
    	<input type="text" name="strategyId" value="${strategyList.strategyId }"/>
    	名称：<input type="text" name="strategyName" value="${strategyList.strategyName }"/><br/>
	            图片：<input type="text" name="strategyPicture" id="upFile"  value="${strategyList.strategyPicture }"/>
	            <input type="button" value="上传" onclick="up()"/><br/>
	           描述：<input type="text" name="strategyInfo"  value="${strategyList.strategyInfo }"/><br/>
	          文章：<TEXTAREA id="myEditor" name="strategyContent" >${strategyList.strategyContent }</TEXTAREA>  
        <SCRIPT type="text/javascript">  
           UE.getEditor('myEditor');
        </SCRIPT><br/>
    <input type="submit" value="提交"/>
    </form>
  </body>
</html>
