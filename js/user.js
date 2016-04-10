$("#list .col-xs-6").each(function(index){
	$(this).tap(function(){
		remove();
		$(this).addClass('click');
		console.log($(this).attr('name'));
	})
})
function remove(){
	$("#list .col-xs-6").each(function(){
		$(this).attr('class','col-xs-6');
	})
}