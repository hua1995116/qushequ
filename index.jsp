<%@page import="com.mzy.androidConnection.entities.UserInfo"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mzy.androidConnection.entities.Dialog"%>
<%@page import="java.util.List"%>
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
<title>主页面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
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
	<img src="icon/top_bg.png" class="top-bg">
	<div class="list-title">
		<div class="center-block">
			<img src="icon/1-1_03.png"> ${session.user.location_xq}
		</div>
		<a href="dialog-listType">
			<div class="change-content">
				<span class="glyphicon glyphicon-th-list" aria-hidden="true"></span>
			</div>
		</a>

	</div>
	<div class="contain">

		<div class="list-tool">
			<div class="container">
				<div class="row">
					<div class="col-xs-3">
						<img src="icon/1-1_10.png">
					</div>
					<div class="col-xs-6 select">
						<div class="click" id="new">最新</div>
						<div id="hot">热门</div>
					</div>

					<div class="col-xs-3">
						<a href="search.jsp"><img src="icon/1-1_13.png"
							class="pull-right"></a>
					</div>
				</div>
			</div>

		</div>
		<div class="list-height"></div>
		<div class="new-up">下拉刷新...</div>
		<div class="new-uped">刷新成功</div>
		<div id="list">
			<s:if
				test="#request.dialogs != null || #request.dialogs.size()!= null">
				<s:iterator value="#request.dialogs" var="dialog">
					<s:set value="#dialog.ImageViewUrl" var="imgUrl"></s:set>
					<s:if test='{#imgUrl.substring(0,1)=="["}'>
						<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)"
							var="newImgUrl"></s:set>
						<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
						<div class="list-content">
							<div class="container">
								<div class="infor-title row">
									<div class="col-xs-2">
										<a href="user-other?otherId=${dialog_author.id}"><img
											src="${dialog_author.headImg }" class="infor-title-img"></a>
									</div>
									<div class="col-xs-10">
										<p class="line-one">
											<s:if test="#dialog.type.equals('说说')">
												<s:set value="1" var="tab_type"></s:set>
											</s:if>
											<s:if test="#dialog.type.equals('租房')">
												<s:set value="2" var="tab_type"></s:set>
											</s:if>
											<s:if test="#dialog.type.equals('求助')">
												<s:set value="3" var="tab_type"></s:set>
											</s:if>
											<s:if test="#dialog.type.equals('闲置(需)')">
												<s:set value="4" var="tab_type"></s:set>
											</s:if>
											<s:if test="#dialog.type.equals('闲置(求)')">
												<s:set value="5" var="tab_type"></s:set>
											</s:if>
											<s:if test="#dialog.type.equals('美食')">
												<s:set value="6" var="tab_type"></s:set>
											</s:if>
											<s:property value="#tab-type" />
											<span>${dialog_author.name }<img src="icon/1-1_19.png"></span><span
												class="tab-type type${tab_type }">${type }</span>
										</p>
										<p class="line-two">
											<span>${dialog_author.location_xq }</span><span>${dialog_author.distant }km</span>
										</p>
									</div>
								</div>
								<%-- <a href="dialog-findById?id=${id}" > --%>
								<div class="infor-content">${content}</div>
								<div class="infor-img row">

									<s:iterator value="#newImgUrls" var="itNewImgUrl">
										<div class="col-xs-3">
											<s:set value="#itNewImgUrl.trim()" var="resultUrl"></s:set>
											<img src="imgUrl/${resultUrl}" alt="..."
												class=" img-responsive">
										</div>
									</s:iterator>
								</div>
								<!-- </a> -->
								<div class="infor-tool row">
									<div class="col-xs-4"
										onclick="zan('dialog-zan?zan_id=${dialog.id}','${dialog.id}')">
										<img src="icon/1-1_22.png"> <span id="${dialog.id}">赞+${good }</span>
									</div>

									<div class="col-xs-4" class="index_respond" id="index_respond"
										onclick="jump('dialog-findById?id=${id}')">

										<img src="icon/1-1_25.png"> 回复
									</div>

									<div class="col-xs-4">
										<img src="icon/1-1_23.png"> 更多
									</div>
								</div>
							</div>
						</div>

					</s:if>
				</s:iterator>
			</s:if>
		</div>
		<div id="list-hot">
			<s:if
				test="#request.dialogsHot != null || #request.dialogsHot.size()!= null">
				<s:iterator value="#request.dialogsHot" var="dialogHot">
					<s:set value="#dialogHot.ImageViewUrl" var="imgUrl"></s:set>
					<s:if test='{#imgUrl.substring(0,1)=="["}'>
						<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)"
							var="newImgUrl"></s:set>
						<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
						<div class="list-content">
							<s:if test="#dialogHot.type.equals('说说')">
								<s:set value="1" var="hottab_type"></s:set>
							</s:if>
							<s:if test="#dialogHot.type.equals('租房')">
								<s:set value="2" var="hottab_type"></s:set>
							</s:if>
							<s:if test="#dialogHot.type.equals('求助')">
								<s:set value="3" var="hottab_type"></s:set>
							</s:if>
							<s:if test="#dialogHot.type.equals('闲置(需)')">
								<s:set value="4" var="hottab_type"></s:set>
							</s:if>
							<s:if test="#dialogHot.type.equals('闲置(求)')">
								<s:set value="5" var="hottab_type"></s:set>
							</s:if>
							<s:if test="#dialogHot.type.equals('美食')">
								<s:set value="6" var="hottab_type"></s:set>
							</s:if>
							<div class="container">
								<div class="infor-title row">
									<div class="col-xs-2">
										<a href="user-other?otherId=${dialog_author.id}"><img
											src="${dialog_author.headImg}" class="infor-title-img"></a>
									</div>
									<div class="col-xs-10">
										<p class="line-one">
											<span>${dialog_author.name }<img src="icon/1-1_19.png"></span>
											<span
												class="tab-type type${hottab_type }">${type }</span>
										</p>
										<p class="line-two">
											<span>${dialog_author.location_xq }</span><span>${dialog_author.distant }km</span>
										</p>
									</div>
								</div>
								<%-- <a href="dialog-findById?id=${id}" > --%>
								<div class="infor-content">${content}</div>
								<div class="infor-img row">

									<s:iterator value="#newImgUrls" var="itNewImgUrl">
										<div class="col-xs-3">
											<s:set value="#itNewImgUrl.trim()" var="resultUrl"></s:set>
											<img src="imgUrl/${resultUrl}" alt="..."
												class=" img-responsive">
										</div>
									</s:iterator>
								</div>
								<!-- </a> -->
								<div class="infor-tool row">
									<div class="col-xs-4"
										onclick="zan('dialog-zan?zan_id=${dialogHot.id}','${dialogHot.id}')">
										<img src="icon/1-1_22.png"> <span id="${dialogHot.id}">赞+${good }</span>
									</div>

									<div class="col-xs-4" class="index_respond" id="index_respond"
										onclick="jump('dialog-findById?id=${id}')">

										<img src="icon/1-1_25.png"> 回复
									</div>

									<div class="col-xs-4">
										<img src="icon/1-1_23.png"> 更多
									</div>
								</div>
							</div>
						</div>
					</s:if>
				</s:iterator>
			</s:if>
		</div>

	</div>
	<script type="text/javascript">
		function jump(id) {
			location.href = id;
		}
		function zan(id, changeid) {
			var url = id;
			var args = {
				"time" : new Date()
			};
			$.post(url, args, function(data) {
				if (data != "-1") {
					$("#" + changeid).html("赞+" + data)
				}
			});
		}
	</script>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>