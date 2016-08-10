$(function(){
	$("#head").click(function(){
		clearfix();
		$(".set-head").show();
		$(".setting-bg").fadeIn();
	});
	$("#name").click(function(){
		clearfix();
		$(".set-name").val("");
		$(".set-name").show();
		$(".setting-bg").fadeIn();
	});
	$("#address").click(function(){
		clearfix();
		$(".set-address").show();
		$(".setting-bg").fadeIn();
	})
	$("#back").click(function(){
		$(".setting-bg").fadeOut();
	});
	$(".set-back span").click(function(){
		$(".setting-bg").fadeOut();
		if($(".set-name").val()!=""){
			console.log(1);
			$("#fname").val($(".set-name").val());
		}
	})
	$("#change").click(function(){
		var src = "images/"+Math.ceil(Math.random()*40)+".jpg";
		$("#img").attr("src",src);
		$("#headImg").attr("value",src);
		$("#fimg").attr("src",src);
	});
	$(".address-ul li").each(function(){
		$(this).click(function(){
			$("#faddress").val(this.innerHTML);
			$(".setting-bg").fadeOut();
		});
	})
	function clearfix(){
		$(".set-head").hide();
		$(".set-name").hide();
		$(".set-address").hide();
	}
});