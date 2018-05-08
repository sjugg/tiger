$(document).ready(function(){
    
   /* $('.header .header_top .header_top_text').find("ul").children("li").hover(function(){
		$(this).children("div").slideDown(350);
	},function(){
		$(this).children("div").slideUp(300);
	});*/
});
$(function() {	
	var system ={}; 
	var p = navigator.platform; 
	system.win = p.indexOf("Win") == 0; 
	system.mac = p.indexOf("Mac") == 0; 
	system.x11 = (p == "X11") || (p.indexOf("Linux") == 0); 
	if(system.win||system.mac||system.xll){
	//如果是电脑 
	
	}else{ 
	//如果是手机
		setTimeout(function(){
			$("#nav-main_computer").css("display","none");
			$("#nav-main_mobile").css("display","block");
		},100);
		
	}
	
	
});