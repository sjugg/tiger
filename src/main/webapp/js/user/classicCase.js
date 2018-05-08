/**
 * 
 */
$(function(){
	$(".ul-1 li").eq($("#classiccaseType").val()).addClass("selected").siblings("li").removeClass("selected");
	$(".ul-2 li").eq($("#classiccaseStyle").val()).addClass("selected").siblings("li").removeClass("selected");
	$(".ul-3 li").eq($("#classiccaseAcreage").val()).addClass("selected").siblings("li").removeClass("selected");
	
	
	$(".classicCase_category_selected #type1").html($(".ul-1").children(".selected").text()+"室");
	$(".classicCase_category_selected #type2").html($(".ul-2").children(".selected").text());
	$("#categoryList").find("ul").children("li").click(function(){
		$(this).addClass("selected").siblings("li").removeClass("selected");
		var index = $(this).parents("ul").attr("class");
		var housetype;
		var housestyle;
		var houseacreage;
		switch(index){
			case "ul-1":
				housetype = $(this).index();
				housestyle = $(".ul-2").children(".selected").index();
				houseacreage = $(".ul-3").children(".selected").index();
				break;
			case "ul-2":
				housetype = $(".ul-1").children(".selected").index();
				housestyle = $(this).index();
				houseacreage = $(".ul-3").children(".selected").index();
				break;
			case "ul-3":
				housetype = $(".ul-1").children(".selected").index();
				housestyle = $(".ul-2").children(".selected").index();
				houseacreage = $(this).index();
				break;
			default:
				housetype = 0;
				housestyle = 0;
				houseacreage = 0
				break;
		}
		getResult(housetype,housestyle, houseacreage);
	});
	function getResult(housetype,housestyle, houseacreage){
		var urlParame = "";
		if(housetype!=0){
			urlParame = "housetype="+housetype;
		}else {
			urlParame = "housetype=";
		}
		if(housestyle!=0){
			urlParame += "&housestyle="+housestyle;
		}else {
			urlParame += "&housestyle=";
		}
		if(houseacreage!=0){
			urlParame += "&houseacreage="+houseacreage;
		}else {
			urlParame += "&houseacreage=";
		}
		window.location.href="/classiccase/classicCase?"+urlParame;
	}

});
function pageNum(dqPage,pageCount,prePage,nextPage){
	var item = "";
	var nextStr="";
	var test = window.location.href;
	var url = "";
	if(test.indexOf("&page") != -1){
		url = test.substring(0,test.indexOf("&page"))+"&page=";
	}else if(test.indexOf("?page") != -1) {
		url = "/classiccase/classicCase?page="
	}else if(test.indexOf("?") != -1){
		url = test+"&page=";
	}else{
		url = test+"?page=";
	}
	if(dqPage<=1){
		item += "<li><a class='none'><img src='images/user/page_li_pre.png'/></a></li>";
	}else{
	item += "<li><a  class='none'href='"+url+prePage+"'><img src='images/user/page_li_pre.png'/></a></li>";
	}
	if(pageCount<=dqPage){
		nextStr += "<li><a class='none'><img src='images/user/page_li_next.png'/></a></li><li class='count'>共"+pageCount+"页</li>";
	}else{
		nextStr += "<li><a class='none' href='"+url+nextPage+"'><img src='images/user/page_li_next.png'/></a></li><li class='count'>共"+pageCount+"页</li>";
	}
	
	 
	if (pageCount <= 6 ) {
		for (var i=1; i <= pageCount; i++) {
            if (i == dqPage) {
                item += "<li><a class='disabled'>"+i+"</a></li>"; 
            }else{
                item += "<li><a href='"+url+i+"' >"+i+"</a></li>"; 
            }
        };
        $("#page ul").append(item+nextStr);
	}else if(pageCount > 6 ) {
		if (dqPage < 6) {
			for (var i=1; i <= 5; i++) {
                if (i == dqPage) {
                    item += "<li><a class='disabled'>"+i+"</a></li>"; 
                }else{
                    item += "<li><a href='"+url+i+"' >"+i+"</a></li>"; 
                }
            };
            if (dqPage <= pageCount-2) {
                item += "<li><a class='omit'> ... </a></li>";
                item +="<li><a href='"+url+pageCount+"' >"+pageCount+"</a></li>";
            }
           
            $("#page ul").append(item+nextStr);
		} else if (dqPage >= 6) {
			if (dqPage+1 == pageCount) {
           		for(var i = dqPage-4; i <= pageCount; i++){
                    if (i == dqPage) {
                    	
                        item += "<li><a class='disabled'>"+i+"</a></li>"; 
                    }else{
                        item += "<li><a href='"+url+i+"' >"+i+"</a></li>"; 
                    }
                }
            }else if (dqPage == pageCount) {
                for(var i = dqPage-5; i <= pageCount; i++){
                    if (i == dqPage) {
                        item += "<li><a class='disabled'>"+i+"</a></li>"; 
                    }else{
                        item += "<li><a href='"+url+i+"' >"+i+"</a></li>"; 
                    }
                }
            }else{
                for(var i = dqPage-4; i <= dqPage; i++){
                    if (i == dqPage) {
                        item += "<li><a class='disabled'>"+i+"</a></li>"; 
                    }else{
                        item += "<li><a href='"+url+i+"' >"+i+"</a></li>"; 
                    }
                }
                item += "<li><a class='omit'> ... </a>";
                 item +="<li><a href='"+url+pageCount+"' >"+pageCount+"</a></li>";
            } 
            $('#page ul').append(item+nextStr); 
		} 
	}
}

function continueLoad(offset, size){
	$.ajax({
	    url: '/decoration/allAcmedecorationJson',
	    type: 'POST',
	    async:false,
	    success:function(data){
	   	 	var dataObj = JSON.parse(data);
	   	 	var dataList = dataObj.acmedecorationList;
	   	 	var len = dataList.length;
	   	 	var result = '';
	   	 	if(len - offset < size ){
		        size = len - offset;
		     }
	   	 	 for(var i=offset; i< (offset+size); i++){
		        result +='<div id="index">'+
		            '<a href=decoration/acmedecorationDetail?id='+ dataList[i].acmedecorationId+' target="_blank">'+
		            '<img src="'+dataList[i].acmedecorationPic+'" alt="" />'+
		            '<p class="name">'+dataList[i].acmedecorationName+'</p>'+
		            '</a></div>';
		      }
		   
		      $('.acmedecorationList .content').append(result);
	   	 	
    	}
	});
	$(".acmedecorationList #index").each(function(index,element){
		if(index>=0){
			var i = Math.floor(index%3);
			if(i == 0){	
				$(this).css("float","left");
				
			}else if(i == 2){
				$(this).css("float","right");
			}else if(i == 1){
				$(this).css("margin-left","1.25%");
				$(this).css("margin-right","1.25%");
			}
		}

	});
	
}












