/**
 * 
 */
$(function(){
 
 for (var i=0;i<$("table tr").length;i++) {
     var tdArr = $("table tr").eq(i).find("td.nameShow");
     for (var j=0;j<$("ul li").length;j++) {
	     var pArr = $("ul li").eq(j).find("p");
	     if(tdArr.eq(0).html() == pArr.eq(0).html()){
	    	 tdArr.eq(0).html(pArr.eq(1).html());
	     }
	}
     
}
 })
