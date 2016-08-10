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
<link rel="stylesheet" type="text/css" href="css/sever-select.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<link rel="stylesheet" type="text/css" href="css/issue.css">
<title>公司选择</title>
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
      		家政选择
    </div>
</div>
	<div class="contain">
		<div class="search">
			<div class="container">
				<img src="icon/1.png" alt="">家政公司
			</div>
		</div>
		<div class="select-block">
			<div class="title">附近</div>
			<div class="select-content">
				<div class="row">
					<s:iterator value="#request.jzCompanies" var="jzCompany">
						<a href="sever-host.jsp?jz_name=${name}"><div class="col-xs-3">
								${name }</div></a>
					</s:iterator>
				</div>
			</div>
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