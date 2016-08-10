<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/user-order.css">
	<link rel="stylesheet" type="text/css" href="css/loading.css">
	<title>用户回复</title>
</head>
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
		我的订单		
	</div>
</div>
<s:iterator value="#request.myOffers" var="myOffer"></s:iterator>
<div class="contain">
	<div class="user-order">
		<div class="order-type fixclear">
			<div class="container">
				<div class="order-name pull-left">
					${jz_companyName}
				</div>
				<div class="order-del pull-right">
					 <a href="user-offerDelete?id=${id}">删除</a>
				</div>
			</div>
		</div>
		<a href="user-order-con.html">
		<div class="order-content">
			<div class="row container">
				<div class="col-xs-3">
					<!-- <img src="images/jz/<% int i =(int)(1+Math.random()*8);out.print(i);%>.jpg" class="img-responsive">  -->
					<img src="images/gd/1.jpg" class="img-responsive">
				</div>
				<div class="col-xs-9">
					<p>
						${jz_serviceNeed }
					</p>
					<p>
						<span><% int j =(int)(100+Math.random()*300);out.print(j);%>元</span>
					</p>
				</div>
			</div>
		</div>
		</a>
		<div class="order-case fixclear">
			<div class="container">
				<div class="pull-left achieve">
					订单已完成
				</div>
				<div class="pull-right again">
					<span>再下一单</span>
					<span>评价</span>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="js/zepto.min.js"></script>
<script src="js/touch.js"></script>
<script src="js/user.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/loading.js"></script>
</body>
</html>