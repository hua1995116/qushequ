// function scroll(){
// 	var seeheight = $(window).height();
// 	var scrollTop = $(document).scrollTop();
// 	$(".box").each(function(){
// 		if($(this).offset().top<seeheight+scrollTop){
// 			var url = $(this).children().data('original');
// 			$(this).children().attr('src',url);
// 			$(this).addClass('fadeIn');
// 		}
// 	})
// }
// scroll(); 
// window.onscroll=function(){
//     scroll(); 
// }
function goTop(acceleration, time) {
	acceleration = acceleration || 0.1;
	time = time || 16;
	var x1 = 0;
	var y1 = 0;
	var x2 = 0;
	var y2 = 0;
	var x3 = 0;
	var y3 = 0;
	if (document.documentElement) {
	x1 = document.documentElement.scrollLeft || 0;
	y1 = document.documentElement.scrollTop || 0;
	}
	if (document.body) {
	x2 = document.body.scrollLeft || 0;
	y2 = document.body.scrollTop || 0;
	}
	var x3 = window.scrollX || 0;
	var y3 = window.scrollY || 0;
	// 滚动条到页面顶部的水平距离
	var x = Math.max(x1, Math.max(x2, x3));
	// 滚动条到页面顶部的垂直距离
	var y = Math.max(y1, Math.max(y2, y3));
	// 滚动距离 = 目前距离 / 速度, 因为距离原来越小, 速度是大于 1 的数, 所以滚动距离会越来越小
	var speed = 1 + acceleration;
	window.scrollTo(Math.floor(x / speed), Math.floor(y / speed));
	// 如果距离不为零, 继续调用迭代本函数
	if (x > 0 || y > 0) {
	var invokeFunction = "goTop(" + acceleration + ", " + time + ")";
	window.setTimeout(invokeFunction, time);
	}
}

$(document).ready(function(){
	// $(function(){
	// 	var div = $('#list');
	// 	var newup = document.querySelector('.new-up');
	// 	var newuped = document.querySelector('.new-uped');
	// 	var body = document.body;
	// 	var mc = new Hammer(document.getElementById('list'));
	// 	var Pan = new Hammer.Pan();
	// 	mc.add(Pan);
	// 	mc.on('panstart',start);
	// 	mc.on('panmove',move);
	// 	mc.on('panend',end);
	// 	function start(e){
	// 		var top = div.css('top');
	// 		if(top==0){
	// 			console.log(1);
	// 			div.attr('index',false);
	// 		}	
	// 	}
	// 	function move(e){	
	// 	var top = div.css('top');
	// 		if(top==0){
	// 			console.log(1);
	// 			div.attr('index',false);
	// 		}	
	// 		if(e.deltaY<100){
	// 			//console.log(div.data('index'));
	// 			div.css({
	// 				// 'transform':'translate(0px,+'+e.deltaY+'px'+')',
	// 				// '-webkit-transform':'translate(0px,+'+e.deltaY+'px'+')'
	// 				top:e.deltaY+'px'
	// 			});
	// 			// div.style.transform = 'translate(0,+'+e.deltaY+'px'+')';
	// 			if(e.deltaY>35&&e.deltaY<70){			
	// 				newup.style.display='block';
	// 			}else if(e.deltaY>70){
	// 				newup.style.display='none';	
	// 				newuped.style.display='block';
	// 			}else if(e.deltaY<0){
	// 					var divtop = top+e.deltaY;
	// 					console.log(divtop);
	// 					div.css({
	// 						'top':divtop+'px'
	// 					});
	// 					div.attr('data-index',true)					
	// 			}
	// 		}
	// 	}
	// 	function end(){
	// 		if(div.attr('index')){

	// 		}else{
	// 			setTimeout(function(){
	// 				div.css({
	// 					// transform:'translate(0,0)'
	// 					top:0
	// 				})
	// 				// div.style.transform = 'translate(0,0)';
	// 					newup.style.display='none';
	// 					newuped.style.display='none';
	// 			},100);	
	// 		}
			
	// 	}
	// });
	
})
