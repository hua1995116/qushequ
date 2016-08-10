<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="css/user-integral.css">
<link rel="stylesheet" type="text/css" href="css/loading.css">
<link rel="stylesheet" type="text/css" href="css/issue.css">
<title>服务</title>
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
			<img src="icon/back1.png">
		</div>
	</a>
	<div class="center-block">
		积分专区
	</div>
</div>
<div class="alert1">
	<div class="bg1">
	</div>
	<div class="bg">
		暂无记录
	</div>
</div>
<div class="alert2">
	<div class="bg1">
	</div>
	<div class="bg">
		<p>1.首先，登陆“趣社区”，右下角出现的“签到领取积分” 。达人每日还可以领取到一些1-2个积分。</p>
		<p>2.这些积分是在平时登陆趣社区时，进行成功购买商品后系统送给你买家的一些小优惠。</p>
		<p>3.有时后，积分还可以通过积分抽奖，进行所谓的赌博，换取一些积分，但是基本都是十赌九输的性质。</p>
		<p>4.进入【趣社区积分聚乐部】，然后可以进行小游戏玩耍，【猜品牌，的积分】，如果猜对了可以获得1-1000的积分，一日只能才一次。</p>
		<p>5.进入【趣社区积分聚乐部】，积分聚乐部中，还可以进行一个小积分抽大奖的活动。类似是抽奖。每次是最低消耗10积分进行，但是也是输多赢少。</p>
		<p>6.购物时，还可以选择一些购买返多倍积分产品。这样返点更加的多</p>
		
		
		
		
		
		

	</div>
</div>
	<div class="contain">
		<div style="overflow: hidden">
			<ul class="hiSlider hiSlider1">
				<li data-title="11111" class="hiSlider-item"><img
					src="images/banner/integral/1.jpg" alt="11111"></li>
				<li data-title="22222" class="hiSlider-item"><img
					src="images/banner/integral/2.jpg" alt="22222"></li>
				<li data-title="33333" class="hiSlider-item"><img
					src="images/banner/integral/3.jpg" alt="33333"></li>
			</ul>
		</div>
		<div class="integral-title">
			<div class="row ul-list">
				<div class="col-xs-4 ">
					<div class="title-name">
						<span>0</span>积分
					</div>
				</div>
				<div class="col-xs-4">
					<div class="title-name between" id="jilu">兑换记录</div>
				</div>
				<div class="col-xs-4">
					<div class="title-name" id="getjifen">获取积分</div>
				</div>
			</div>
		</div>
		<div class="integral-activeity">
			<div class="activeity-title">积分活动</div>
			<div class="row show-inter">
				<div class="col-xs-5">
					<img src="images/intergral/8 (3).jpg" alt="" class="img-responsive"/>
				</div>
				<div class="col-xs-7">
					<img src="images/intergral/8 (2).jpg" alt="" class="img-responsive"/>
					<img src="images/intergral/8 (1).jpg" alt="" class="img-responsive"/>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<img src="images/intergral/4.jpg" alt="" class="img-responsive"/>
				</div>
				<div class="col-xs-6">
					<img src="images/intergral/5.jpg" alt="" class="img-responsive"/>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<img src="images/intergral/3.jpg" alt="" class="img-responsive"/>
				</div>
				<div class="col-xs-6">
					<img src="images/intergral/7.jpg" alt="" class="img-responsive"/>
				</div>
			</div>
			<div class="row">
				<a href="integral-detail.html">
				<div class="col-xs-6">
					<img src="images/intergral/2.jpg" alt="" class="img-responsive"/>
				</div>
				</a>
				<div class="col-xs-6">
					<img src="images/intergral/6.jpg" alt="" class="img-responsive"/>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6">
					<img src="images/intergral/1(1).jpg" alt="" class="img-responsive"/>
				</div>
				<div class="col-xs-6">
					<img src="images/intergral/1(2).jpg" alt="" class="img-responsive"/>
				</div>
			</div>
		</div>

	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/hammer.min.js"></script>
	<script src="js/jquery.hiSlider.min.js"></script>
	<script src="js/sever.js"></script>
	<script src="js/nprogress.js"></script>
	<script src="js/loading.js"></script>
	<script src="js/user-integral.js"></script>
</body>
</html>