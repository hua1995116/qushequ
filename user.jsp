<%@page import="com.mzy.androidConnection.entities.UserInfo"%>
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
	<link rel="stylesheet" type="text/css" href="css/user.css">
	<link rel="stylesheet" type="text/css" href="css/loading.css">
	<title>登录页面</title>
</head>
<body>
<s:set value="#session.user" var="user"></s:set>
	<s:set value="#request.fansCount" var="fCount"></s:set>
	<s:set value="#request.careCount" var="cCount"></s:set>
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
<!-- <div class="list-title">
			<div class="center-block">
				<img src="icon/1-1_03.png">
				${session.user.location_xq}
			</div>
		</div> -->
<div class="infor-content" >
	<div class="bg-img">
		<img src="images/6.jpg" >
	</div>	
	<div class="row row1">		
		<div class="col-xs-4 title-name">
			<s:property value="#user.name" />
			<img src="icon/1-1_19.png">
		</div>
		<div class="col-xs-4 title-img">
			<img src="${session.user.headImg }" class="center-block">
		</div>
		<div class="col-xs-4 title-address">
			<s:property value="#user.location_xq" />
		</div>
	</div>
	<div class="content-title">	
		<div class="title-list center-block">
			<div class="row">
			<!--<a href="user-myCare?care_name=${session.user.username }"></a>-->
				<a href="user-look.jsp">
				<div class="col-xs-4">
					6
					<span class="pink">关注</span>
				</div>
				</a>
				<a href="user-myFan?fans_name=${session.user.username }">
				<div class="col-xs-4 vertical">
					<s:property value="#fCount" />
					<span class="pink">粉丝</span>
				</div>
				</a>
				<a href="user-integral.jsp">
				<div class="col-xs-4">
					<s:property value="#user.jifen" /><span class="green">积分</span>
				</div>
				</a>
			</div>
		</div>
	</div>
	<div class="content-list">
			<ul class="list-group">
			  <a href="dialog-mydialog?author_id=${session.user.id}">
			  	<li class="list-group-item">
				  	我的发布
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
			    </li>
			  </a>
			  <a href="dialog-myevaluate?evaluateAuthor_id=${session.user.id}">  
			  	 <li class="list-group-item">
				  	我的回复
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				 </li>
			  </a>
			  <a href="user-setting.jsp">
			  	  <li class="list-group-item">
				  	我的设置
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				  </li>
			  </a>
			  <a href="user-myOrder?from_user=${session.user.name}">
			  	  <li class="list-group-item">
				  	我的订单
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				  </li>
			  </a>  
			  <a href="user-quick.html">
			  	  <li class="list-group-item">
				  	我的快递
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				  </li>
			  </a> 
			  <a href="local-friend.html">
			  	  <li class="list-group-item">
				  	同城朋友
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				  </li>
			  </a>  
			  <a href="join-history.html">
			  	  <li class="list-group-item">
				  	约吧记录
				  	<span class="glyphicon glyphicon-menu-right pull-right"></span>
				  </li>
			  </a> 
			  
			</ul>
	</div>
</div>
<script src="js/zepto.min.js"></script>
<script src="js/touch.js"></script>
<script src="js/user.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/loading.js"></script>
</body>
</html>