/**
 * 
 */
$(document).ready(function(){
	
	$(".center_2_content_1_body_left").hover(function(){
		$(".center_2_content_1_body_left .bg").css("display","block");
		$(".center_2_content_1_body_left .name").css("display","block");
	},function(){
		$(".center_2_content_1_body_left .name").css("display","none");
		$(".center_2_content_1_body_left .bg").css("display","none");
	});			
	$(".center_2_content_1_body_right_top").hover(function(){
		$(".center_2_content_1_body_right_top .bg").css("display","block");
		$(".center_2_content_1_body_right_top .name").css("display","block");
	},function(){
		$(".center_2_content_1_body_right_top .name").css("display","none");
		$(".center_2_content_1_body_right_top .bg").css("display","none");
	});		
	$(".center_2_content_1_body_right_bottom_left").hover(function(){
		$(".center_2_content_1_body_right_bottom_left .bg").css("display","block");
		$(".center_2_content_1_body_right_bottom_left .name").css("display","block");
	},function(){
		$(".center_2_content_1_body_right_bottom_left .name").css("display","none");
		$(".center_2_content_1_body_right_bottom_left .bg").css("display","none");
	});	
	$(".center_2_content_1_body_right_bottom_right").hover(function(){
		$(".center_2_content_1_body_right_bottom_right .bg").css("display","block");
		$(".center_2_content_1_body_right_bottom_right .name").css("display","block");
	},function(){
		$(".center_2_content_1_body_right_bottom_right .name").css("display","none");
		$(".center_2_content_1_body_right_bottom_right .bg").css("display","none");
	});	
	
	$(".center_2_content_2_body #index_bespeak_ico").click(function(){
		 var i=$(this).children("input").val();
		 $("#buildingBespeakShowIframe").contents().find("#buildingbespeakId").val(i);
		 $(".center_2_content_2_body").leanModal({ top: 110, overlay:0.5,closeButton: ".modal_close" });
         closeWinScoll();
	 
	});
	 $('.center_3_body #row_3_input_submit').click(function(){
		 var areage = $("#quotedpriceHouseAcreage").val();
		if(isNaN(areage) || areage<0 || areage>500){
			alert("请输入您的房屋面积");
			$("#quotedpriceHouseAcreage").val("");
			$("#quotedpriceHouseAcreage").focus();
		}else if($("#quotedpriceUsername").val() == "" || $("#quotedpriceUsername").val() == "请输入您的姓名" ){
			alert("请输入您的姓名");
			$("#quotedpriceUsername").val("");
			$("#quotedpriceUsername").focus();
		}else if($("#quotedpriceTel").val() == "" || $("#quotedpriceTel").val() == "请输入您的手机号" ){
			alert("请输入您的手机号");
			$("#quotedpriceTel").val("");
			$("#quotedpriceTel").focus();
		}else if(!((/^1\d{10}$/.test($("#quotedpriceTel").val())) || (/\d{8}$/.test($("#quotedpriceTel").val()))  || (/^0\d{2,3}-?\d{7,8}$/.test($("#quotedpriceTel").val())))) {
			alert("请输入您的手机号");
			$("#quotedpriceTel").val("");
			$("#quotedpriceTel").focus();
		}   else {
        $.ajax({
            url: '/toQuotationShow',
            type: 'POST',
            data: $('.indexForm').serialize(),
            success:function(data){
            	successModal(data);
            },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	        	/*alert(XMLHttpRequest.status);
	        		alert(XMLHttpRequest.readyState);
	        		alert(textStatus);*/
	        }
        });
		}
       
    });
/*	$('#ImgId').each(function(){
	    var image=new Image();
	    image.src=this.src;
	    alert(image.src);
	    if(image.complete){
	        //存在缓存中，立即处理
	        cutImgz(this);
	        
	    } else{
	        //不存在缓存中，onload处理
	        this.onload=function(){
	            cutImgz(this);
	            alert("sd");
	        }
	    }
	});

	function cutImgz(obj){
	    var image=new Image();
	    image.src=obj.src;

	    $this=$(obj);
	    var iwidth=$this.width();//获取在CSS里固定的图片显示宽度
	    var iheight=$this.height();//获取在CSS里固定的图片显示高度
	    
	    if(1*image.width*iheight!=1*iwidth*image.height){
	        //原始图片的尺寸与CSS里固定的图片尺寸比例不一致，则进行处理
	        if(image.width/image.height>=iwidth/iheight){
	            $this.height(iheight+'px');
	            $this.width(((image.width*iheight)/image.height)-90+'px');
	        }
	        else{
	            $this.width(iwidth+'px');
	            $this.height((image.height*iwidth)/image.width+'px');
	        }
	    }
	}*/
	
	 
});

function successModal(data){
	var dataObj = JSON.parse(data);
	$("#quotationShow .materialCost span").html(dataObj.materialCost);
	$("#quotationShow .personCost span").html(dataObj.personCost);
	$("#quotationShow .designCost b span").html(dataObj.designCost+"元");
	$("#quotationShow .qualityInspectionCost b span").html(dataObj.qualityInspectionCost+"元");
	$("#quotationShow .totalCost span").html(dataObj.totalCost);
	var overlay=$("<div id='lean_overlay'></div>");
	$("body").append(overlay);
	$("#lean_overlay").css({"display":"block",opacity:0});
	$("#lean_overlay").fadeTo(200,0.5);
	closeWinScoll();
	$("#quotationShow").css({"display":"block","opacity":1,"z-index":11000,"position":"fixed","left":50+"%","top":($("#quotationShow").outerHeight()/3)+"px","margin-left":-($("#quotationShow").outerWidth()/2)+"px"});
}


function checkBuildingBespeakShow(){
	if(/[<>\"\,^!@￥#$%&*(){}|-~`\+\=\'\《]/.test($("#userName").val())){
		alert("不得包含非法字符！");
		$("#userName").focus();
		$("#userName").val("");
	    return false;
  	}else if($("#userName").val() == "" || $("#userName").val() == "请输入您的称呼"){
  		 alert("请输入您的姓名！");
  	      $("#username").focus();
  		  $("#username").val("");
  	      return false;
  	}else if (!(RegExp("(([\u4E00-\u9FA5]{2,7})|([a-zA-Z]{3,10}))").test($("#userName").val()))) {
	      alert("请输入您的姓名！");
	      $("#userName").focus();
		  $("#userName").val("");
	      return false;
   	} 
	alert($("#username").val());
    if(!((/^1\d{10}$/.test($("#tel").val())) || (/\d{8}$/.test($("#tel").val()))  || (/^0\d{2,3}-?\d{7,8}$/.test($("#tel").val())))) {
	   alert("请输入您的电话！");
	   $("#tel").focus();
	   $("#tel").val("");
	   return false;
    }  
   close_modal_parent("#buildingBespeakShow");
   	return true;
}








