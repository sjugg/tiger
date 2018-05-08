/**
 * 
 */
$(function(){
	 $("#lean_overlay").click(function(){close_modal("#quotationShow")});
	 $(".modal_close").click(function(){close_modal("#quotationShow")});
})
function browserCheck(){
	var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
    var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera;
    var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
    reIE.test(userAgent);
    var fIEVersion = parseFloat(RegExp["$1"]);
    return fIEVersion;
};
function closeOpen() {
	window.history.back();
};
function openWin(url,t,l,w,h) {
    var result=window.open(url,"_blank","top="+t+",left="+l+",width="+w+",height="+h+",menubar=yes,scrollbars=no,toolbar=yes,status=yes");
    if(result==true) {
    	window.location.reload(true);
    }   
}
function closeWin() {
	window.close();
}
function closeWinScoll(){ 
	 var scrollTop;
	if (document.documentElement && document.documentElement.scrollTop) {
		scrollTop = document.documentElement.scrollTop;
	}else if(document.body)
    {
        scrollTop=document.body.scrollTop;
    }
	$ (window).scroll (function (){ $(this).scrollTop (scrollTop); });
}
function openWinScoll(){ 
	$(window).unbind ('scroll');
	scrollTop=window.pageYoffset || (document.body.scrollTop+document.documentElement.scrollTop);
}
function close_modal(modal_id){
	$(modal_id).css({"display":"none"});
	$("#lean_overlay").fadeOut(200);
	openWinScoll();
	parent.window.location.reload();
}
function close_modal_parent(modal_id){
	$(modal_id, window.parent.document).css({"display":"none"});
	$("#lean_overlay", window.parent.document).fadeOut(200);
	$("#lean_overlay", window.parent.document).css({"display":"none"});
	parent.window.openWinScoll();
	parent.window.location.reload();
}