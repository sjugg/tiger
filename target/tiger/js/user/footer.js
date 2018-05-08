/**
 * 
 */
$(function(){
	$(".user_feedback").click(function(){
		var overlay=$("<div id='lean_overlay'></div>");
		$("body",parent.document).append(overlay);
		$("#lean_overlay",parent.document).css({"display":"block",opacity:0});
		$("#lean_overlay",parent.document).fadeTo(200,0.5);
		window.parent.closeWinScoll();
		$("#userFeedBack",parent.document).css({"display":"block","opacity":1,"z-index":11000,"position":"fixed","left":50+"%","top":($("#userFeedBack",parent.document).outerHeight()/2)+"px","margin-left":-($("#userFeedBack",parent.document).outerWidth()/2)+"px"});
	});
	$("#cancel").click(function(){
		window.parent.close_modal_parent("#userFeedBack");
		 var h = $(parent.document).height()-$(window).height();
         $(parent.document).scrollTop(h);
	});
})