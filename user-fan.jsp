<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<link rel="stylesheet" type="text/css" href="css/user-fan.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<title>用户粉丝</title>
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
		我的粉丝		
	</div>
</div>
	<div class="contain">
		<div class="search">
			<button class="search-button">
				<span> <img src="icon/1-1_13.png" alt="" class="search-img">
					搜索粉丝
				</span>
			</button>
			<span class="glyphicon glyphicon-menu-hamburger"></span>
		</div>
		<div class="respond">
			<s:iterator value="#request.fans" var="fan">
				<div class="list-respond">
					<div class="container">
						<div class="respond-title row">
							<div class="col-xs-3">
								<a href="user-other?otherId=<s:property value="#fan.fan.id" />">
								<img src="<s:property value="#fan.fan.headImg" />" class="infor-title-img">
								</a>
							</div>
							<div class="col-xs-9">
								<p class="line-one">
									<span><s:property value="#fan.fan.username" /><img
										src="icon/1-1_19.png"></span>
								</p>
								<p class="line-two">
									<span><s:property value="#fan.fan.location_xq" /></span>
							</div>
						</div>

					</div>
				</div>
			</s:iterator>
		</div>

	</div>
	<script src="js/zepto.min.js"></script>
	<script src="js/touch.js"></script>
	<script src="js/user.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>