<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>加入约吧</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/new-join.css">
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
			<img src="icon/1-1_03.png"> 加入约吧
		</div>
	</div>
	<div class="contain">
		<div class="search fixclear">
			搜索发起人/标题/房间ID <img src="icon/1.png" alt="">
		</div>
		<s:iterator value="#request.ybs" var="yb">
			<div class="information">
				<div class="row">
					<div class="col-xs-3">
						<img src="images/4.jpg" alt="" class="img-responsive">
					</div>
					<div class="col-xs-6 right-content">
						<p>内容：${content}</p>
						<p>发起人:${master.name}</p>
						<p>人数${joinMember}/${limitMember }</p>
					</div>
					<div class="col-xs-3">
						<a href="yb-join?home_id=${id}&&member_id=1"><div class="join">+</div></a>
					</div>
				</div>
			</div>
		</s:iterator>

	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>