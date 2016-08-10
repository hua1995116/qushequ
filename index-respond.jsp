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
<title>回复</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index-respond.css">
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
		<a href="Javascript:history.go(-1);void(0);">
			<div class="list-back">
				<img src="icon/back.png">
			</div>
		</a>
		<div class="center-block">
			<img src="icon/1-1_03.png"> 回复
		</div>
	</div>
	<div class="contain">
		<div id="list">
			<div class="list-content">
				<div class="container">
					<div class="infor-title row">
						<div class="col-xs-2">
							<img src="${dialogById.dialog_author.headImg }"
								class="infor-title-img">
						</div>
						<div class="col-xs-10">
							<p class="line-one">
								<span>${dialogById.dialog_author.name }
								<a href="user-other?otherId=${dialog_author.id}">
								<img src="icon/1-1_19.png"></a></span><span>健身</span>
							</p>
							<p class="line-two">
								<span>${dialogById.dialog_author.location_xq }</span><span>${dialogById.dialog_author.distant }km</span>
							</p>
						</div>
					</div>
					<div class="infor-content">${dialogById.content}</div>
					<s:set value="#dialogById.imageViewUrl" var="imgUrl"></s:set>
					<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)"
						var="newImgUrl"></s:set>
					<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
					<s:iterator value="#newImgUrls" var="itNewImgUrl">
						<div class="infor-img row">
						<div class="col-xs-3">
							<s:set value="#itNewImgUrl.trim()" var="resultUrl"></s:set>
							<img src="imgUrl/${resultUrl}" alt="..." class=" img-responsive">
						</div>

					</div>
					</s:iterator>
					
					<div class="infor-tool row">
						<div class="col-xs-4">
							<img src="icon/1-1_22.png"> 赞${dialogById.good }
						</div>
						<div class="col-xs-4">
							<img src="icon/1-1_25.png"> 回复
						</div>
						<div class="col-xs-4">
							<img src="icon/1-1_23.png"> 更多
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="respond">
			<s:iterator value="#request.evaluates" var="evaluate">
				<div class="list-respond">
					<div class="container">
						<div class="respond-title row">
							<div class="col-xs-2">
								<img src="${asses_author.headImg }" class="infor-title-img">
							</div>
							<div class="col-xs-10">
								<p class="line-one">
									<span>${asses_author.name }<img src="icon/1-1_19.png"></span>
								</p>
								<p class="line-two">
									<span>${asses_author.location_xq }</span><span>${asses_author.distant }km</span><span>2小时前</span>
								</p>
								<div class="respond-content">${content }</div>
							</div>
						</div>

					</div>
				</div>
			</s:iterator>
		</div>
		<div style="height: 3.5rem;"></div>
		<nav class="respond-text navbar-fixed-bottom">

			<form action="dialog-evaluate" id="evaluate">
				<div class="row">
					<div class="col-xs-2 text-img">
						<img src="icon/3-1_08.png" class="center-block">
					</div>
					<div class="col-xs-8 ">
						<input placeholder="发表评论" type="text" class="text-issue"
							name="evaluate_content" form="evaluate" />
					</div>
					<div class="col-xs-2">

						<input type="hidden" value="${session.user.id}" form="evaluate"
							name="evaluate_author_id"> <input type="hidden"
							value="${request.dialogById.id}" form="evaluate"
							name="dialog_evaluate_id"> <input type="submit"
							value="发送" class="submit-issue" form="evaluate">
					</div>
				</div>
			</form>
		</nav>

	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
</body>
</html>