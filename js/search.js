$(function(){
	var type=['宠物','春游','兴趣班','家政','美食','节日','房屋出租','维修','物业','旅游'];
	var num=[];
	//遍历点击事件
	function click1(){
		$(".label-middle p").each(function(){
				$(this).click(function(){
				$(".search").val($(this).html());
			})
		});
	}
	//随机生成数字
	function rand(){
		var i = 0;
		while(i<5){
			var a = Math.ceil(Math.random()*9);
			if(i==0){
				num.push(a);
			}else{
				for(var j=0;j<num.length;j++){
					if(a==num[j]){
						a = Math.ceil(Math.random()*9);
						j--;
						continue;
					}else{
						num.push(a);
						break;
					}
				}
			}			
			i++;
		}
		alert(num);
	}
	click1();
	//rand();
	$(".label-bottom").click(function(){
		$(".label-middle").html('<p>'+type[Math.ceil(Math.random()*9)]+'</p><p>'+type[Math.ceil(Math.random()*9)]+'</p><p>'+type[Math.ceil(Math.random()*9)]+'</p><p>'+type[Math.ceil(Math.random()*9)]+'</p><p>'+type[Math.ceil(Math.random()*9)]+'</p>');
		click1();
	});
});
