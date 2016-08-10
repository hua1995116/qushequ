<%@page import="java.util.Random"%>
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
<link rel="stylesheet" type="text/css" href="css/issue-content.css">
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
			<img src="icon/1-1_03.png"> 写说说
		</div>
	</div>
	<div class="contain">
		<form action="dialog-newDialog" method="post" enctype="multipart/form-data">
			<textarea class="text-area" placeholder="分享新鲜事..."
				name="newDialog_content"></textarea>
			<input type="hidden" value="images/3.jpg" name="newDialog_imageUrl">
			<input type="hidden" value="${session.user.id }"
				name="newDialog_author_id"> <input type="hidden"
				value="<%=request.getParameter("type")%>" name="type">
		<div class="onload">
		<input type="file" multiple name="file" id="file-img"/>
			<div class="onload-img">+
			</div>
		</div>
				<input type="submit" value="发布" class="submit">
		</form>
		<ul class="face clearfix">
			<li><img src="icon/3-1_05.png"></li>
			<li><img src="icon/3-1_07.png"></li>
			<li><img src="icon/3-1_08.png"></li>
		</ul>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/issue-content.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>