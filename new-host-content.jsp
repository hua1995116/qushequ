<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/new-host-content.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<title>服务</title>
</head>
<body>
	<script type="text" id="splash-template">
    <div class="splash card">
        <div role="spinner">
            <div class="spinner-icon"></div>
        </div>
        <p class="lead" style="text-align:center">马上回来...</p>
        <div class="progress">
            <div class="mybar" role="bar">
            </div>
        </div>
    </div>
</script>
<div class="list-title">
			<div class="center-block">
				<img src="icon/1-1_03.png">
				约吧
			</div>
		</div>
	<div class="contain">
		<div class="host">
			<div class="row">
				<div class="col-xs-3">
					<img src="${request.ybHome.master.headImg}" class="img-responsive">
				</div>
				<div class="col-xs-9">
					<p>发起人：${request.ybHome.master.name}</p>
					<p>内容：${request.ybHome.content}</p>
					<p>房间ID：${request.ybHome.id}</p>
				</div>
			</div>
			<div class="host-time">
				<span>9'</span>00
			</div>
		</div>
		<div class="join">
			<div class="joined">已加入</div>
			<div class="join-list">
				<ul class="list clearfix">
					<li>
						<img src="images/38.jpg" class='img-responsive'>
					</li>
				</ul>
			</div>
		</div>
		<div class="achieve clearfix">
			<div class="stop">
				<span> × </span> 点击终止
			</div>
			<a href="yb-chat?room_id=${request.ybHome.id}"><div class="yeah">
				<span>√</span> 点击完成
			</div></a>
		</div>
	</div>
	<input type="hidden" value="${request.ybHome.id}" id="ybId">
<!-- <input type="submit" id="ajax" onClick="ajax()"> -->
<script type="text/javascript">
		function ajax(){
			var url = "yb-joinInfo?home_id="+$("#ybId").val();
			var args = {
				"time" : new Date()
			};
			$.post(url, args, function(data) {
				var data1 = data.replace("]","");
				var data2 = data1.replace("[","");
				var ch = data2.split(",");
				$(".list").html("");
				for(var i=0;i<ch.length;i++){
					if(ch[i]!=""){
						var li = document.createElement('li');
						li.innerHTML = "<img src="+ch[i]+" class='img-responsive'>";
						$(".list").append(li);
					}	
				}
			});
		}
		setInterval(ajax,1000);
	</script>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>