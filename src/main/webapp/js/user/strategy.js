/**
 * 
 */
$(function(){
	if($("#strategykindsUrlId").val() != ""){
		$("#strategy_ul li").eq($("#strategykindsUrlId").val()-1).addClass("selected").siblings("li").removeClass("selected");
	}
	$("#strategy_ul").find("ul").children("li").hover(function(){
		$(this).addClass("selected").siblings("li").removeClass("selected");
	},function(){
		if($("#strategykindsUrlId").val() != ""){
			$("#strategy_ul li").eq($("#strategykindsUrlId").val()-1).addClass("selected").siblings("li").removeClass("selected");
		}
	});
})