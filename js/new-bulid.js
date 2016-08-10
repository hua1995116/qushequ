
	function ajax(){
		var url = "yb-getMsg?room_id="+$("#room_id").val();
		var args = {
			"time" : new Date()
		};
		$.post(url, args, function(data) {
			var data1 = data.replace("]","");
			var data2 = data1.replace("[","");
			var ch = data2.split(",");
			$(".bulid").html("");
			for(var i=0;i<ch.length;i=i+3){
				if(ch[i]!=""){
//					alert(ch[i]+','+$("#author_id").val());
//					alert(ch[i]==$("#author_id").val());
					if(ch[i]==parseInt($("#author_id").val())){
						var user = document.createElement('div');
						user.className = 'bulid-user';
						user.innerHTML = "<div class='row'><div class='col-xs-2'><img src="+ch[i+1]+" class='img-responsive'></div><div class='col-xs-8'><div class='name'>admin</div><div class='content right'><span><em></em></span>"+ch[i+2]+"</div></div></div>";
				        $(".bulid").append(user);
					}else{
						var user2 = document.createElement('div');
						user2.className = 'bulid-other';
						user2.innerHTML = "<div class='row'><div class='col-xs-2'><img src="+ch[i+1]+" class='img-responsive'></div><div class='col-xs-8'><div class='name'>红</div><div class='content left'><span><em></em></span>"+ch[i+2]+"</div></div></div>";
				        $(".bulid").append(user2);
					}
					
				}	
			}
		});
		
	}
	
	$("#sendSMS").click(function(){
			var URL = "yb-newMsg";
			$.ajax({
    			url:URL,
    			type:'post',
    			data:{author_id:$("#author_id").val(),room_id:$("#room_id").val(),msgContent:$(".text-issue").val()},
    			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
    			success:function(data){
    				$('.text-issue').val('');
    			}
    		});
	});
	setInterval(ajax,1000);
	
