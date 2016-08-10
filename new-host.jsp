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
<link rel="stylesheet" type="text/css" href="css/new-host.css">
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
				发起约吧
			</div>
		</div>
	<div class="contain">
		<div class="container">
			<form action="yb-newYb">
				<ul class="content-all">
					<li class="row content"><input value="" type="text"
						placeholder="请输入内容" name="ybHome_content"></li>
					<li class="row place">
						<div class="col-xs-3">
							<img src="icon/new/Y-1_03.png"> 范围
						</div>
						<div class="col-xs-9">
							<input value="" type="text" placeholder="请选择" name="ybHome_wild">
						</div>
					</li>
					<li class="row number">
						<div class="col-xs-3">
							<img src="icon/new/Y-1_06.png"> 人数
						</div>
						<div class="col-xs-9">
							<input value="" type="text" placeholder="选择人数" name="ybHome_member">
							<input type="hidden" value="${session.user.id}" name="master">
						</div>
					</li>
				</ul>
				<div class="input-submit">
					<input type="submit" value="" /> 点击发起
				</div>
			</form>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>