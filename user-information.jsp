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
<title>消息</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/user-information.css">
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
			<div class="center-block">
				<img src="icon/1-1_03.png">
				信息
			</div>
		</div>
	<div class="contain">
		<div class="look-title">
			<div class="row ul-list">
				<div class="col-xs-6 click">
					<div class="title-name">提醒</div>
				</div>
				<div class="col-xs-6 ">
					<div class="title-name between">私信</div>
				</div>
			</div>
		</div>
		<div class="information">
			<div class="row">
				<div class="col-xs-3">
					<img src="images/4.jpg" alt="" class="img-responsive">
				</div>
				<div class="col-xs-9 right-content">
					<p>
						烘焙课堂<span>2016-4-11</span>
					</p>
					<p>您报名的初级糕点课程于4月12日开课...</p>
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