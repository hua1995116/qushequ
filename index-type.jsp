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
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
<!-- <link rel="stylesheet" type="text/css" href="css/user-look.css"> -->
<link rel="stylesheet" type="text/css" href="css/index-type.css">
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
		<a href="Javascript:history.go(-1);void(0);">
			<div class="list-back">
				<img src="icon/back.png">
			</div>
		</a>
		<div class="center-block">
			 说说分类
		</div>
	</div>
<div class="contain">
    <div class="list-tool">
        <div class="container">
            <div class="row">
                <div class="col-xs-3">
                    <img src="icon/1-1_10.png">
                </div>
               <!-- <div class="col-xs-6 select">
                    <div class="click" id="new" >最新</div>
                    <div  id="hot" >热门</div>
                </div> --> 
                
                <div class="col-xs-3">
                    <a href="search.jsp"><img src="icon/1-1_13.png" class="pull-right"></a>
                </div>
            </div>
        </div>
    </div>
    <div style="height:4rem;">
    </div>
    <a href="dialog-list?findType=美食">
    <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/look/2.jpg" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>美食</p>
                        <p>共${request.foodCount}个话题</p>
                        <p>晒出你烘焙出的美食，和邻居分享吧。</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
        <a href="dialog-list?findType=租房">
         <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/type/zf.png" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>租房</p>
                        <p>共${request.houseCount}个话题</p>
                        <p>提供用户之间的个体租房交易</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
        <a href="dialog-list?findType=说说">
         <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/type/ss.png" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>说说</p>
                        <p>共${request.talkCount}个话题</p>
                        <p>秀出你的幽默细胞，分享出你的快乐</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
        <a href="dialog-list?findType=闲置(需)">
         <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/type/xzx.png" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>闲置(需)</p>
                        <p>共${request.xzxCount}个话题</p>
                        <p>发出你的需求，社友一起来帮你</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
        <a href="dialog-list?findType=闲置(求)">
         <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/type/xzq.png" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>闲置(求)</p>
                        <p>共${request.xzqkCount}个话题</p>
                        <p>多余的东西放着坏掉，不如给需要人</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
        <a href="dialog-list?findType=求助">
         <div class="look-list">
            <div class="container">
                <div class="row">
                    <div class="col-xs-3">
                        <img src="images/type/bz.png" class="img-responsive img-title">
                    </div>
                    <div class="col-xs-7">
                        <p>求助</p>
                        <p>共${request.helpCount}个话题</p>
                        <p>大家一起来帮你</p>
                    </div>
                    <div class="col-xs-2">
                        
                    </div>
                </div>
            </div>
        </div>
        </a>
</div>

        
    <script src="js/jquery.min.js"></script>
    <script src="js/hammer.min.js"></script>
    <script src="js/index.js"></script>
    <script src="js/nprogress.js"></script>
    <script src="js/loading.js"></script>
</body>
</html>