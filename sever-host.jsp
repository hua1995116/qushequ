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
<link rel="stylesheet" type="text/css" href="css/sever-host.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<link rel="stylesheet" type="text/css" href="css/issue.css">
<link rel="stylesheet" type="text/css" href="css/bg.css">
<link rel="stylesheet" type="text/css"
	href="css/data/mobiscroll_date.css">
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
       	订单详情
    </div>
</div>
	<div class="bg-over">
		<div class="bg"></div>
		<div class="bg-content">
			<div class="address-back">
				<span class="glyphicon glyphicon-menu-left"></span> 服务地址
			</div>
			<div class="address">
				<span>[默认]</span> <span class="address-content">水木清华小区南202室</span>
			</div>
			<div class="address-new">添加新地址</div>
		</div>
	</div>
	
	<form method="post" action="jz-companyInfo">
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
				src="images/banner/sever-fix/1.jpg" alt="11111"></li>
			<li data-title="22222" class="hiSlider-item"><img
				src="images/banner/sever-fix/2.jpg" alt="22222"></li>
			<li data-title="33333" class="hiSlider-item"><img
				src="images/banner/sever-fix/3.jpg" alt="33333"></li>
		</ul>
	</div>
			<ul class="correct">
				<li class="row">
					<div class="col-xs-4">服务类别</div>
					<div class="col-xs-6">
						<input value="家政服务" type="text" readonly="readonly"
							placeholder="家政服务" name="jz_type">
					</div>
				</li>
				<li class="row">
					<div class="col-xs-4">公司选择</div>
					<div class="col-xs-6">
						<input value="<%=request.getParameter("jz_name")%>" type="text"
							placeholder="请选择" name="jz_companyName" readonly="readonly">
					</div>
				</li>
				<li class="row">
					<div class="col-xs-4">服务时间</div>
					<div class="col-xs-6">
						<input value="" type="date"  
							placeholder="请选择" name="jz_serviceDate">
					</div>
				</li>
				<li class="row">
					<div class="col-xs-4">其他需求</div>
					<div class="col-xs-6">
						<input value="" type="text" placeholder="如有需求请填写"
							name="jz_serviceNeed">
					</div>
				</li>
			</ul>
			<ul class="correct">
				<li class="row">
					<div class="col-xs-4">联系人</div>
					<div class="col-xs-6">
						<input value="" type="text" placeholder="请填写" name="jz_memberName">
					</div>
				</li>
				<li class="row">
					<div class="col-xs-4">服务地址</div>
					<div class="col-xs-6">
						<input value="" type="text" placeholder="请填写" readonly="readonly"
							id="address" name="jz_memberLocation">
					</div>
				</li>
				<li class="row">
					<div class="col-xs-4">联系电话</div>
					<div class="col-xs-6">
						<input value="" type="text" placeholder="请填写"
							name="jz_memberPhoneNumber">
					</div>
				</li>
			</ul>
			<div class="next">
				<input type="submit" value="下一步">
			</div>
		</div>
	</form>

	<script src="js/jquery.min.js"></script>
	<script src="js/data/mobiscroll_date.js" charset="gb2312"></script>
	<script src="js/data/mobiscroll.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever-host.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>