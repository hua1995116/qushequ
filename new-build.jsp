<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/new-bulid.css">
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
                水木清华社区
            </div>
        </div>
<div class="contain">
    <div class="bulid">    
    </div>
     <nav class="respond-text navbar-fixed-bottom">
        <form>
            <div class="row">
                <div class="col-xs-2 text-img">
                    <img src="icon/3-1_08.png" class="center-block">
                </div>
                <div class="col-xs-8 ">
                    <input placeholder="发表评论" type="text" class="text-issue" name="text" />
                    <input type="hidden" value="${session.user.id}" id="author_id" name="author_id">
                    <input type="hidden" value="${request.room.id}" id="room_id" name="room_id">
                </div>
                <div class="col-xs-2">
                    <input type="button" value="发送" class="submit-issue" id="sendSMS" >
                </div>
            </div>
        </form>
    </nav>
    
</div>
<script src="js/jquery.min.js"></script>
<script src="js/hammer.min.js"></script>
<script src="js/jquery.hiSlider.min.js"></script>
<script src="js/new-bulid.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/loading.js"></script>
</body>
</html>