/**
 * 
 */
$(function(){
	
})
function checkForm(){
		alert();
		if($("#companyName").val() == "" || $("#companyName").val() == "请输入您的公司名称"){
			alert("请输入您的公司名称");
			$("#companyName").val("");
			$("#companyName").focus();
			return false;
		}
		if($("#companyTel").val() == "" || $("#companyTel").val() == "请输入您的手机号码"){
			alert("请输入您的手机号码");
			$("#companyTel").val("");
			$("#companyTel").focus();
			return false;
		}
		if($("#companyUserName").val() == "" || $("#companyUserName").val() == "请输入您的称呼"){
			alert("请输入您的称呼");
			$("#companyUserName").val("");
			$("#companyUserName").focus();
			return false;
		}
		if($("#companyCity").val() == "" || $("#companyCity").val() == "请输入您所在的城市"){
			alert("请输入您所在的城市");
			$("#companyCity").val("");
			$("#companyCity").focus();
			return false;
		}
		return true;
	}