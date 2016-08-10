$('.hiSlider1').hiSlider({
	isFlexible:true,
	isShowTitle:false,
	isShowControls:false
});
$(function () {
	var currYear = (new Date()).getFullYear();	
	var opt={};
	opt.date = {preset : 'date'};
	opt.datetime = {preset : 'datetime'};
	opt.time = {preset : 'time'};
	opt.default = {
		theme: 'android-ics light', //皮肤样式
		display: 'modal', //显示方式 
		mode: 'scroller', //日期选择模式
		dateFormat: 'yyyy-mm-dd',
		lang: 'zh',
		showNow: true,
		nowText: "今天",
		startYear: currYear - 50, //开始年份
		endYear: currYear + 10 //结束年份
	};

	$("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']));

});
$(function(){
	$("#address").click(function(){
		$(".bg-over").fadeIn();
	});
	$(".bg").click(function(event){
		event.stopPropagation();
		$(".bg-over").fadeOut();
	});
	$(".address-back").click(function(){
		$(".bg-over").fadeOut();
	});
	$(".address").click(function(){
		var content = $(".address-content").html();
		$("#address").val(content);
		$(".bg-over").fadeOut();
	})
});