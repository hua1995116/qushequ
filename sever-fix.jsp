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
<link rel="stylesheet" type="text/css" href="css/sever.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<link rel="stylesheet" type="text/css" href="css/issue.css">
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
	<a href="Javascript:history.go(-1);void(0);">
		<div class="list-back">
			<img src="icon/back.png">
		</div>
	</a>
    <div class="center-block">
        <img src="icon/1-1_03.png">
     		修理
    </div>
</div>
<div class="contain">
	<div style="overflow: hidden" style="padding-top:4rem;">
		<!-- <div class="img-change">
		<img src="images/bg/1.jpg" data="1" >
		<img src="images/bg/2.jpg" data="2">
		<img src="images/bg/3.jpg" data="3">	
	</div>
	<ul class="point">
		<li class="click" data="1"></li>
		<li data="2"></li>
		<li data="3"></li>
	</ul> -->
		<ul class="hiSlider hiSlider1">
			<li data-title="11111" class="hiSlider-item"><img
				src="images/banner/sever-fix/1.jpg" alt="11111"></li>
			<li data-title="22222" class="hiSlider-item"><img
				src="images/banner/sever-fix/2.jpg" alt="22222"></li>
			<li data-title="33333" class="hiSlider-item"><img
				src="images/banner/sever-fix/3.jpg" alt="33333"></li>
		</ul>
	</div>
	<ul class="list-group">
		<li class="list-group-item"><img src="icon/sever/2-3_03.png">
			水管维修 <span class="glyphicon glyphicon-menu-right pull-right"></span>
		</li>
		<li class="list-group-item"><img src="icon/sever/2-3_06.png">
			电路维修 <span class="glyphicon glyphicon-menu-right pull-right"></span>
		</li>
		<li class="list-group-item"><img src="icon/sever/2-3_08.png">
			煤气维修 <span class="glyphicon glyphicon-menu-right pull-right"></span>
		</li>
		<li class="list-group-item"><img src="icon/sever/2-3_11.png">
			其他维修 <span class="glyphicon glyphicon-menu-right pull-right"></span>
		</li>
	</ul>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>