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
	<link rel="stylesheet" type="text/css" href="css/user-respond.css">
	<link rel="stylesheet" href="css/other-user.css"/>
	<link rel="stylesheet" type="text/css" href="css/loading.css">
	<title>好友页面</title>
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
<div class="list-title">
	<a href="Javascript:history.go(-1);void(0);">
		<div class="list-back">
			<img src="icon/back.png">
		</div>
	</a>
	<div class="center-block">
		<img src="icon/1-1_03.png">
		${request.other_info.location_xq }
	</div>
</div>

	<div class="infor-content">
	<div class="bg-img">
		<img src="images/6.jpg" >
	</div>	
	<div class="row row1">		
		<div class="col-xs-4 title-name">
			${request.other_info.name }
			<img src="icon/1-1_19.png">
		</div>
		<div class="col-xs-4 title-img">
			<img src="${request.other_info.headImg }" class="center-block">
		</div>
		<div class="col-xs-4 title-address">
			<s:property value="#user.location_xq" />
		</div>
	</div>
	<div class="content-title">	
		<div class="title-list center-block">
			<div class="row">
			<!--<a href="user-myCare?care_name=${session.user.username }"></a>-->
				<div class="col-xs-4">
					<span class="pink">+关注</span>
					<!-- <span class="pink">已关注</span> -->
				</div>
				<a href="user-myFan?fans_name=${request.other_info.username }">
				<div class="col-xs-4 vertical">
					<span class="pink">粉丝</span>
				</div>
				</a>
				<a href="user-integral.jsp">
				<div class="col-xs-4">
					${request.request.other_info.jifen }<span class="green">积分</span>
				</div>
				</a>
			</div>
		</div>
	</div>
<s:if test="#request.other_dialogs != null || #request.other_dialogs.size()!= null">
				<s:iterator value="#request.other_dialogs" var="other_dialog">				
					<s:set value="#other_dialog.ImageViewUrl" var="imgUrl"></s:set>
					<s:if test='{#imgUrl.substring(0,1)=="["}'>
						<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)" var="newImgUrl"></s:set>
						<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
					<div class="list-content">
						<div class="container">
							<div class="infor-title row">
								<div class="col-xs-2">
									<a href="user-other?otherId=${dialog_author.id}"><img src="${dialog_author.headImg }" class="infor-title-img"></a>
								</div>
								<div class="col-xs-10">
									<p class="line-one">
										<span>${dialog_author.name }<img src="icon/1-1_19.png"></span><span class="tab-type">${type }</span>
									</p>
									<p class="line-two">
										<span>${dialog_author.location_xq }</span><span>${dialog_author.distant }</span><span>2小时前</span>
									</p>
								</div>
							</div>
							<%-- <a href="dialog-findById?id=${id}" > --%>
								<div class="infor-content">${content}</div>
								<div class="infor-img row">

								<s:iterator value="#newImgUrls" var="itNewImgUrl">
									<div class="col-xs-3">
									<s:set value="#itNewImgUrl.trim()" var="resultUrl"></s:set>
										<img src="imgUrl/${resultUrl}" alt="..." class=" img-responsive">
									</div>
								</s:iterator>
								</div>
							<!-- </a> -->
							<div class="infor-tool row">
								<div class="col-xs-4" onclick="zan('dialog-zan?zan_id=${dialog.id}','${dialog.id}')">
									<img src="icon/1-1_22.png">
									<span  id="${dialog.id}">赞+${good }</span> 
								</div>
										
								<div class="col-xs-4" class="index_respond"id="index_respond" onclick="jump('dialog-findById?id=${id}')">
							
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


<script src="js/zepto.min.js"></script>
<script src="js/touch.js"></script>
<script src="js/user.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/loading.js"></script>
</body>
</html>