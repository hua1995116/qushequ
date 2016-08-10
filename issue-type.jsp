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
	<title>频道详情</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/issue-type.css">	
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
        <img src="icon/1-1_03.png">
        水木清华社区
    </div>
</div>
<div class="contain">
    <div class="look-list" style="z-index:11">
        <div class="container">
            <div class="row">
                <div class="col-xs-3">
                    <img src="images/look/2.jpg" class="img-responsive img-title">
                </div>
                <div class="col-xs-7">
                    <p>${request.findType }<span>共${request.count}个话题</span></p>
                    <p>晒出你烘焙出的美食，和邻居分享吧。</p>
                </div>
            
            </div>
        </div>
    </div>
    <div class="look-title">
        <div class="row ul-list">
            <div class="col-xs-6 click">
                <div class="title-name">
                    提醒
                </div>
            </div>
            <div class="col-xs-6 ">
                <div class="title-name between">
                    私信
                </div>
            </div>
        </div>
    </div>
    
    <s:if test="#request.typeDialogs != null || #request.typeDialogs.size()!= null">
				<s:iterator value="#request.typeDialogs" var="typeDialog">				
					<s:set value="#typeDialog.ImageViewUrl" var="imgUrl"></s:set>
					<s:if test='{#imgUrl.substring(0,1)=="["}'>
						<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)" var="newImgUrl"></s:set>
						<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
					<div class="list-content">
						<div class="container">
						<s:if test="#typeDialog.type.equals('说说')">
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
										<s:set value="6" var="tab_type" ></s:set>
									</s:if>
							<div class="infor-title row">
								<div class="col-xs-2">
									<a href="user-other?otherId=${dialog_author.id}"><img src="${dialog_author.headImg }" class="infor-title-img"></a>
								</div>
								<div class="col-xs-10">
									<p class="line-one">
										<span>${dialog_author.name }<img src="icon/1-1_19.png"></span><span class="tab-type type${tab_type }">${type }</span>
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
										<img src="imgUrl/${resultUrl}" alt="..." class=" img-responsive">
									</div>
								</s:iterator>
								</div>
							<!-- </a> -->
							<div class="infor-tool row">
								<div class="col-xs-4" onclick="zan('dialog-zan?zan_id=${typeDialog.id}','${typeDialog.id}')">
									<img src="icon/1-1_22.png">
									<span  id="${typeDialog.id}">赞+${good }</span> 
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
    <script src="js/jquery.min.js"></script>
    <script src="js/hammer.min.js"></script> 
    <script src="js/index.js"></script>
    <script src="js/nprogress.js"></script>
    <script src="js/loading.js"></script>
</body>
</html>