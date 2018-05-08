/**
 * 
 */
$(document).ready(function(){
	 var num;
	
	    $('.center_ul_js>li[id]').click(function(){
    	 var Obj = $(this).attr('id');
         num = Obj.substring(3, Obj.length);  
         $(".center_ul_js").leanModal({ top: 110, overlay:0.5,closeButton: ".modal_close" });
         closeWinScoll();
         $("#designShowIframe").contents().find(".designShow_left img").attr("src",$(this).find('input.pic').val());
         $("#designShowIframe").contents().find("#designStylesId").val($(this).find('input.id').val());
         $("#designShowIframe").contents().find(".designShow_right_bottom p span").html($(this).find('input.designLen').val());
         $("#designShowIframe").contents().find(".designShow_right_top p").html($(this).find('input.designInfo').val());
	    });
	    
	    $(".modal_close").click(function(){
	    	window.location.reload();
	    });
	    
	    
});
function checkForm(){
	if($(".name").val() == "" || $(".name").val() == "请输入您的姓名"){
		alert("请输入您的姓名");
		$(".name").focus();
		$(".name").val("");
		return false;
	}
	if($(".tel").val() == "" || $(".tel").val() == "请输入您的手机号码"){
		alert("请输入您的手机号码");
		$(".tel").focus();
		$(".tel").val("");
		return false;
	}else if(!((/^1\d{10}$/.test($(".tel").val())) || (/\d{8}$/.test($(".tel").val()))  || (/^0\d{2,3}-?\d{7,8}$/.test($(".tel").val())))) {
		alert("请输入您的手机号码");
		$(".tel").focus();
		$(".tel").val("");
		return false;
	}      
	return false;
}
function close_modal_parent(modal_id){
	
}
function checkDesignShow(){
	if(isNaN($("#acreage").val()) || $("#acreage").val() == ""){
		alert("您输入的不是数字");
		$("#acreage").focus();
		$("#acreage").val("");
	    return false;
  	}else if ($("#acreage").val()<0 || $("#acreage").val()>1000) {
  		$("#acreage").focus();
		$("#acreage").val("");
        alert("请输入您的房屋面积！");
        return false;
   	} 
   if(!((/^1\d{10}$/.test($("#tel").val())) || (/\d{8}$/.test($("#tel").val()))  || (/^0\d{2,3}-?\d{7,8}$/.test($("#tel").val())))) {
	   alert("请输入您的电话！");
	   $("#tel").focus();
		$("#tel").val("");
	   return false;
   }  
   close_modal_parent("#designShow");
   	return true;
}