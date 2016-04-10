function swip(){
	var _false = false;
	var imgchange = $(".img-change");
	var img = $('.img-change img');
	var pointli = $('.point li');
	var length = img.length;
	var Width = document.body.clientWidth;
	var rise = $(img[0]).width()/Width;
	var mc = new Hammer('.img-change');
	var Swipe = new Hammer.Swipe();
	mc.add(Swipe);	
	imgchange.css({
		height:$(img[0]).height()/rise,
		width:Width*length,
		position:'relative',
		left:0
	});
	for(var i = 0;i<length;i++){
		$(img[i]).css({
			width:Width,
			position:'absolute',
			left:i*Width
		})
	}
	for(var i= 0;i<length;i++){
		if(!_false){
				touchleft(i,Width,img,mc);
				touchright(i,Width,img);		
		}
	}	
	var timer = setInterval(function(){
			var Width = document.body.clientWidth;
		//for(var i= 0;i<length;i++){
		//alert($('.point').is('.click').attr('data'));
			//var data = $(img[i]).attr('data');		
			function objectdata(){
				for(var i=0;i<length;i++){
					if($(pointli[i]).attr('class')=='click'){
						return $(pointli[i]);	
					}
				}
			}
			var data = objectdata().attr('data');
			if(data!=length){
				imgchange.css({
					left:-data*Width
				});
				$(pointli[data]).addClass('click');
				$(pointli[data-1]).removeClass('click');
				_false = false;
			}else{
				imgchange.css({
					left:0
				});
				$(pointli[0]).addClass('click');
				$(pointli[data-1]).removeClass('click');
				_false = false;
			}
		//}	
	},5000);
}
function touchleft(i,Width,img,mc){
	mc.on('swiperight',function(){
		_false = true;
		var data = $(this).attr('data');		
		if(data!=length){
			imgchange.css({
				left:-data*Width
			});
			$(pointli[data]).addClass('click');
			$(pointli[data-1]).removeClass('click');
			_false = false;
		}else{
			imgchange.css({
				left:0
			});
			$(pointli[0]).addClass('click');
			$(pointli[data-1]).removeClass('click');
			_false = false;
		}
	});
	// $(img[i]).swipeLeft(function(){
		
	// });		
}
// function touchright(i,Width,img){	
// 	var mc = new Hammer('.img-change');
// 	var Swipe = new Hammer.Swipe();
// 	mc.add(Swipe);
// 	mc.on('swiperight',function(){
// 		_false = true;
		
// 		var data = $(this).attr('data');
// 		if(data!=1){
// 			$(pointli[data-2]).addClass('click');
// 			$(pointli[data-1]).removeClass('click');
// 			imgchange.css({
// 				left:-(data-2)*Width
// 			});
// 			_false = false;
// 		}else{
// 			$(pointli[length-1]).addClass('click');
// 			$(pointli[data-1]).removeClass('click');
			
// 			imgchange.css({
// 				left:-Width*(length-1)
// 			});
// 			_false = false;
// 		}
// 	});
// 	// $(img[i]).swipeRight(function(){	
		
// 	// });		
// }
swip();

$(window).on('resize',swip);