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
	<title>搜索</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/search.css">	
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

        <a href="Javascript:history.go(-1);void(0);" >
            <div class="list-back">
                <img src="icon/back.png">
            </div>
        </a>
        <form action="dialog-search">
            <input type="text" value="" placeholder="搜索" class="search" name="search_info">
            <input type="submit" class="submit-search" value="">
        </form>
           
    </div>
<div class="contain">
    
    <div class="label1">
        <div class="label-top">
            大家都在搜
        </div>
        <div class="label-middle">
            
            <p>宠物</p>
            <p>春游</p>
            <p>兴趣班</p>
            <p>家政</p>
            <p>美食</p>
        </div>
        <div class="label-bottom">
            换一换
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/hammer.min.js"></script>
<script src="js/jquery.hiSlider.min.js"></script>
<script src="js/search.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/loading.js"></script>
</body>
</html>