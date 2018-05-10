<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.8.3.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script language="JavaScript" src="<%=basePath%>/js/admin/menu.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="css/admin/basic.css">
	<link rel="stylesheet" type="text/css" href="css/admin/menu.css">
  </head>
  <script type="text/javascript">
		window.onload = function(){
			showHide("items1_1");
			showHide("items2_1");
			showHide("items3_1");
			showHide("items4_1");
			showHide("items5_1");
			showHide("items6_1");
			showHide("items7_1");
			}
	</script>
  <body>
    <table class="left" cellspacing='0' cellpadding='0'>
	  <tr>
	    <td valign="top">
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")' id='items1'><b>基本操作</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li class="selected"><a href='admin/sysPro' target='main'>系统属性</a> </li>
	            <li><a href='<%=path %>/admin/admin/updatePassword' target='main'>密码修改</a> </li>
	            <li><a href='<%=path %>/admin/admin/showAllAdmin' target='main'>管理员管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items2_1")' id='items2'><b>案例管理</b></dt>
	        <dd style='display:block' class='sitem' id='items2_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/classicCase/showAllClassicCase' target='main'>经典案例</a> </li>
	            <li><a href='<%=path %>/admin/acmedecoration/showAllAcmedecoration' target='main'>极致装修</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items3_1")' id='items3'><b>楼盘管理</b></dt>
	        <dd style='display:block' class='sitem' id='items3_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/admin/building/showAllBuilding' target='main'>热装楼盘管理</a> </li>
	             <li><a href='<%=path %>/admin/building/showAllBuildingbespeak' target='main'>预约参观管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items4_1")' id='items4'><b>设计管理</b></dt>
	        <dd style='display:block' class='sitem' id='items4_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/admin/design/showAllDesign' target='main'>设计模板管理</a> </li>
	             <li><a href='<%=path %>/admin/design/showAllDesignbespeak' target='main'>预约设计管理</a> </li>
	             <li><a href='<%=path %>/admin/design/showAllDesignoffer' target='main'>设计报价管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items5_1")' id='items5'><b>财务管理</b></dt>
	        <dd style='display:block' class='sitem' id='items5_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/admin/strategy/showAllstrategy' target='main'>库存管理</a> </li>
	             <li><a href='<%=path %>/financeMana.action' target='main'></a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items6_1")' id='items6'><b>通知管理</b></dt>
	        <dd style='display:block' class='sitem' id='items6_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/admin/admin/showNote' target='main'>通知管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items7_1")' id='items7'><b>安全退出系统</b></dt>
	        <dd style='display:block' class='sitem' id='items7_1'>
	          <ul class='sitemu'>
	            <li><a href='#' onClick="logout()">安全退出系统</a></li>
	          </ul>
	        </dd>
	      </dl>
		</td>
	  </tr>
	</table>
  </body>
</html>
