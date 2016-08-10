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
	<title>登录页面</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/result.css">	
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
            搜索结果
        </div>
    </div>
<div class="contain">
    <div class="result-title">
        <div class="row ul-list">
            <div class="col-xs-4 click">
                <div class="title-name">
                    话题
                </div>
            </div>
            <div class="col-xs-4">
                <div class="title-name between">
                    邻居
                </div>
            </div>
            <div class="col-xs-4">
                <div class="title-name">
                    活动
                </div>
            </div>
        </div>
    </div>
    <s:iterator value="#request.searchResult" var="result">
    <div class="list-result">
    <s:set value="#result.ImageViewUrl" var="imgUrl"></s:set>
					<s:if test='{#imgUrl.substring(0,1)=="["}'>
						<s:set value="#imgUrl.substring(1,#imgUrl.length()-1)"
							var="newImgUrl"></s:set>
						<s:set value="#newImgUrl.split(',')" var="newImgUrls"></s:set>
    	
        <div class="container">
            <div class="result-title row">
                <div class="col-xs-2">
                    <a href="user-other?otherId=${dialog_author.id}"><img src="${dialog_author.headImg}" class="infor-title-img"></a>
                </div>
                <div class="col-xs-10">
                    <p class="line-one"><span>${dialog_author.name}<img src="icon/1-1_19.png"></span></p>
                    <p class="line-two"><span>${dialog_author.location_xq}</span><span>${dialog_author.distant}km</span><span>2小时前</span></p>
                </div>
            </div>
            <div class="result-content">
                ${content}
            </div>
            <s:iterator value="#newImgUrls" var="itNewImgUrl">
										<div class="col-xs-3">
											<s:set value="#itNewImgUrl.trim()" var="resultUrl"></s:set>
											<img src="imgUrl/${resultUrl}" alt="..."
												class=" img-responsive">
										</div>
									</s:iterator>
        </div>
        </s:if>
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