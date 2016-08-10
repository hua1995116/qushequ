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
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/user-look.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
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
			<img src="icon/back1.png">
		</div>
	</a>
    <div class="center-block">
		我的关注		
	</div>
</div>
	<div class="contain">
		<div class="look-title">
			<div class="row ul-list">
				<div class="col-xs-6 click">
					<div class="title-name">话题(3)</div>
				</div>
				<div class="col-xs-6 ">
					<div class="title-name between">频道(3)</div>
				</div>
			</div>
		</div>
		<div class="look-list">
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<img src="images/look/2.jpg" class="img-responsive img-title">
					</div>
					<div class="col-xs-7">
						<p>美食</p>
						<p>共5个话题</p>
						<p>提供用户之间的个体租房交易。</p>
					</div>
					<div class="col-xs-2">
						<img src="images/look/4.jpg" class="img-responsive img-click">
					</div>
				</div>
			</div>
		</div>
		<div class="look-list">
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<img src="images/type/zf.png" class="img-responsive img-title">
					</div>
					<div class="col-xs-7">
						<p>说说</p>
						<p>共4个话题</p>
						<p>秀出你的幽默细胞，分享出你的快乐。</p>
					</div>
					<div class="col-xs-2">
						<img src="images/look/4.jpg" class="img-responsive img-click">
					</div>
				</div>
			</div>
		</div>
		<div class="look-list">
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<img src="images/type/ss.png" class="img-responsive img-title">
					</div>
					<div class="col-xs-7">
						<p>说说</p>
						<p>共103个话题</p>
						<p>秀出你的幽默细胞，分享出你的快乐。</p>
					</div>
					<div class="col-xs-2">
						<img src="images/look/4.jpg" class="img-responsive img-click">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>