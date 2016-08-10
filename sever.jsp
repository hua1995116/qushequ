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
			<div class="center-block">
				<img src="icon/1-1_03.png">
				水木清华社区
			</div>
		</div>
<div class="contain">
	<div style="overflow: hidden" style="padding-top:4rem">
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
				src="images/banner/sever/1.jpg" alt="11111"></li>
			<li data-title="22222" class="hiSlider-item"><img
				src="images/banner/sever/2.jpg" alt="22222"></li>
			<li data-title="33333" class="hiSlider-item"><img
				src="images/banner/sever/3.jpg" alt="33333"></li>
		</ul>
	</div>
	<ul class="list-group">
		<a href="sever-offer.jsp"><li class="list-group-item"><img
				src="icon/2-1_03.png"> 社区通知 <span
				class="glyphicon glyphicon-menu-right pull-right"></span></li></a>
		<a href="jz-select"><li class="list-group-item"><img
				src="icon/2-1_06.png"> 家政服务 <span
				class="glyphicon glyphicon-menu-right pull-right"></span></li></a>
		<a href="sever-fix.jsp"><li class="list-group-item"><img
				src="icon/2-1_08.png"> 管道工 <span
				class="glyphicon glyphicon-menu-right pull-right"></span></li></a>
	</ul>
	<!-- <div class="issue">
	<div class="issue-bg">
		
	</div>
	<div class="issue-content ">
		<div class="issue-content-list row center-block">
			<div class="issue-content-title">
				发布
			</div>
			
			<a href="#">
				<div class="col-xs-4">
					<img src="icon/3-0_03.png" class="img-responsive">
					<p>说说</p>
				</div>
			</a>
			<a href="">
				<div class="col-xs-4">
					<img src="icon/3-0_05.png" class="img-responsive">
					<p>求助</p>
				</div>
			</a>
			<a href="">
				<div class="col-xs-4">
					<img src="icon/3-0_07.png" class="img-responsive">
					<p>租房</p>
				</div>
			</a>
			<a href="">
				<div class="col-xs-4">
					<img src="icon/3-0_12.png" class="img-responsive">
					<p>闲置(需)</p>
				</div>
			</a>
			<a href="">
				<div class="col-xs-4">
					<img src="icon/3-0_13.png" class="img-responsive">
					<p>闲置(求)</p>
				</div>
			</a>
			<a href="">
				<div class="col-xs-4">
					<img src="icon/3-0_14.png" class="img-responsive">
					<p>美食</p>
				</div>
			</a>
			<div class="issue-close">
				×
			</div>
		</div>
	</div>
</div> -->
</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>