$(function(){ //页面加载完毕才执行
		
	var images_url1 =new Array();
	var images_url2 =new Array();
	var images_url3 =new Array();
	function changeHref(location,index){
		 $(".center_5_body_top_"+location+"_img").parent().attr('href','/decoration/acmedecorationDetail?id='+images_url3[index]);
	}
	 $.ajax({
         url: '/acmedecorationJson',
         type: 'POST',
         async:false,
         success:function(data){
        	 var dataObj = JSON.parse(data);
        	 images_url1 = dataObj.acmedecorationPic;
        	 images_url2 = dataObj.acmedecorationMinpic;
        	 images_url3 = dataObj.acmedecorationId;
        	 $(".center_5_body_top_right_img").attr("src",images_url2[1]);
        	 changeHref("right",1);
        	 $(".center_5_body_top_left_img").attr("src",images_url2[2]);
        	 changeHref("left",2);
         },
	        error:function(XMLHttpRequest, textStatus, errorThrown){
	        	/*alert(XMLHttpRequest.status);
	        		alert(XMLHttpRequest.readyState);
	        		alert(textStatus);*/
	        }
     });
	 
		//=========设置参数==========
		//图片统一高度：
		var images_height1 = '443px';
		//图片路径/链接(数组形式):
		/*var images_url1 = [
			'images/user/index_center_5_body_top_img_1.jpg',
			'images/user/index_center_5_body_top_img_2.jpg',
			'images/user/index_center_5_body_top_img_3.jpg'
		];*/
		
		/*var images_url2 = [
			"images/user/index_center_5_body_top_img_l1.jpg",
			"images/user/index_center_5_body_top_img_l2.jpg",
			"images/user/index_center_5_body_top_img_l3.jpg"
		];*/
		
		var images_count1 = images_url1.length;
		//console.log(images_count1);

		//创建节点
		//图片列表节点
		for(var j=0;j<images_count1+1;j++){
			$('.silder ul').append("<a href='/decoration/acmedecorationDetail?id="+images_url3[j]+"'><li></li></a>")
		}

		//载入图片
		$('.silder ul li').css('background-image','url('+images_url1[0]+')');
		$.each(images_url1,function(key,value){
			$('.silder ul li').eq(key).css('background-image','url('+value+')');
		});

		$('.silder').css('height',images_height1);

		$('.silder ul').css('width',(images_count1+1)*100+'%');

		//=========================

		var num1 = 0;
		//获取窗口宽度
		
		var silder = document.getElementById("silder");
		var window_width1 = silder.offsetWidth;
		$(window).resize(function(){
			window_width1 = silder.offsetWidth;
			$('.silder ul li').css({width:window_width1});
			clearInterval(timer1);
			nextPlay1();
			timer1 = setInterval(nextPlay1,8000);
		});
		//console.log(window_width1);
		$('.silder ul li').width(window_width1);
		
		//自动播放
		var timer1 = null;
		function prevPlay(){
			num1--;
			if(num1<0){
				$(".center_5_body_top_left img").attr("src",images_url2[1]);
				changeHref("left",1);
				$(".center_5_body_top_right img").attr("src",images_url2[0]);
				changeHref("right",0);
				//悄悄把图片跳到最后一张图(复制页,与第一张图相同),然后做出图片播放动画，left参数是定位而不是移动的长度
				$('.silder ul').css({left:-window_width1*images_count1}).stop().animate({left:-window_width1*(images_count1-1)},500);
				num1=images_count1-1;
			}else{
				/*$(".center_5_body_top_left img").fadeOut(10);*/
				$(".center_5_body_top_left img").attr("src",images_url2[-(2*num1-2)]);
				changeHref("left",-(2*num1-2));
				/*$(".center_5_body_top_left img").fadeIn(1000);*/
				$(".center_5_body_top_right img").attr("src",images_url2[num1+1]);
				changeHref("right",num1+1);
				//console.log(num1);
				$('.silder ul').stop().animate({left:-num1*window_width1},500);
			}
		}
		function nextPlay1(){
			num1++;
			if(num1>images_count1){
				$(".center_5_body_top_left img").attr("src",images_url2[0]);
				changeHref("left",0);
				$(".center_5_body_top_right img").attr("src",images_url2[2]);
				changeHref("right",2);
				//播放到最后一张(复制页)后,悄悄地把图片跳到第一张,因为和第一张相同,所以难以发觉,
				$('.silder ul').css({left:0}).stop().animate({left:-window_width1},500);
				//css({left:0})是直接悄悄改变位置，animate({left:-window_width1},500)是做出移动动画
				//随后要把指针指向第二张图片,表示已经播放至第二张了。
				num1=1;
			}else{
				//在最后面加入一张和第一张相同的图片，如果播放到最后一张，继续往下播，悄悄回到第一张(肉眼看不见)，从第一张播放到第二张
				//console.log(num1);
				$(".center_5_body_top_left img").attr("src",images_url2[num1-1]);
				changeHref("left",num1-1);
				var num2 = 2;
				if(num1>1){num2=num1-2;}
				$(".center_5_body_top_right img").attr("src",images_url2[num2]);
				changeHref("right",num2);
				$('.silder ul').stop().animate({left:-num1*window_width1},500);
			}
		}
		timer1 = setInterval(nextPlay1,8000);
		//鼠标经过banner，停止定时器,离开则继续播放
		$('.silder').mouseenter(function(){
			clearInterval(timer1);
			//左右箭头显示(淡入)
			$('.silder i').fadeIn();
		}).mouseleave(function(){
			timer1 = setInterval(nextPlay1,8000);
			//左右箭头隐藏(淡出)
			$('.silder i').fadeOut();
		});
		//播放下一张
		$('.silder .right').click(function(){
			nextPlay1();
		});
		//返回上一张
		$('.silder .left').click(function(){
			prevPlay();
		});
		if(browserCheck()<=8){$(".center_3_jiantou").css("display","none");nextPlay1();}
	});	