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
<link rel="stylesheet" type="text/css" href="css/sever-order.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<link rel="stylesheet" type="text/css" href="css/issue.css">
<title>服务</title>
</head>
<body>
	<s:set value="#request.jzCompanyInfo" var="CompanyInfo"></s:set>
	<s:set value="#session.user" var="user"></s:set>
	<s:if test="#request.jzCompanyInfo==null">123</s:if>
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
       		确认订单
    </div>
</div>
	<form id="order" action="jz-newOffer" >
		<div class="contain">
			<div class="tip">
				<p>订单一旦发布信息不得更改，请确认订单信息后</p>
				<p>点击发布</p>
			</div>
			<div class="order-list">
				<ul class="correct">
					<li class="row">
						<div class="col-xs-3">订单号</div>
						<div class="col-xs-9">
							<input value="1231232" type="text" form="order"
								name="offerNumber">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">联系人</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_memberName")%>"
								type="text" form="order" name="">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">服务地址</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_memberLocation")%>"
								type="text" form="order">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">联系电话</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_memberPhoneNumber")%>"
								type="text" readOnly="true" form="order">
						</div>
					</li>
				</ul>
			</div>
			<div class="order-list">
				<ul class="correct">
					<li class="row">
						<div class="col-xs-3">服务类别</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_type")%>" type="text"
								readOnly="true" form="order">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">服务时间</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_serviceDate")%>"
								type="text" readOnly="true" form="order">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">其他要求</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_serviceNeed")%>"
								type="text" readOnly="true" form="order">
						</div>
					</li>
				</ul>
			</div>
			<div class="order-list">
				<ul class="correct">
					<li class="row">
						<div class="col-xs-3">公司选择</div>
						<div class="col-xs-9">
							<input value="<%=request.getParameter("jz_companyName")%>"
								type="text" readOnly="true" name="jz_companyName">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">公司电话</div>
						<div class="col-xs-9">
							<input value="${CompanyInfo.phoneNumber}" type="text"
								readOnly="true" form="order">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">公司地址</div>
						<div class="col-xs-9">
							<input value="${CompanyInfo.location}" type="text"
								readOnly="true" form="order">
						</div>
					</li>
					<li class="row">
						<div class="col-xs-3">服务承诺</div>
						<div class="col-xs-9">
							<input value="1次使用保障" type="text" readOnly="true" form="order">
						</div>
					</li>
				</ul>
			</div>
			<input type="hidden" value="${user.name}" name="from_user">
			<div class="input-submit">
				<input value="发布订单" type="submit" form="order">
				<div class="input-tip">
					<div class="tip">
						<p>订单生成后我们承诺在24小时之内给您回复请保持你的手机畅通</p>
					</div>
				</div>
			</div>
	</form>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>