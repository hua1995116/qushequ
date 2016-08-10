<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" type="text/css" href="css/sever-offer.css">	
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
        社区通知
    </div>
</div>
<div class="contain">
    <div class="offer-title">
        <div class="row">
             <div class="col-xs-2 click aa">
                 <span class="">
                     最新
                 </span>
             </div>
             <div class="col-xs-2 bb">
                <span>
                    推荐
                </span>  
             </div>
             <div class="col-xs-8">
                 <input type="text" value="" placeholder="搜索">
             </div>
        </div>
    </div>
    <div class="type1">
        <a href="offer-detail.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2016-05-03</p>
                            <p>社区开展创质量强市 科普益民大讲堂。</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail1.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2016-06-08</p>
                            <p>杭州地铁3号线进入小和山？建不建最快月底揭晓</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail2.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2015-04-11</p>
                            <p>公交B支7路4月12日明天上路，小和山居民出行更方便。</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail3.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2016-04-21</p>
                            <p>地铁3号线7号线有眉目了! 3号线或延至小和山！</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail4.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2015-09-029</p>
                            <p>水木清华小区业主自装监控，邻居怀疑被侵犯隐私</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail4.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2013-7-3  </p>
                            <p>和山暑期班--暑假作业 精选提高 量身辅导 主动学习 快乐游戏</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <div class="type2" style="display:none"> 
        <a href="offer-detail2.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2015-04-11</p>
                            <p>公交B支7路4月12日明天上路，小和山居民出行更方便。</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2016-05-03</p>
                            <p>社区开展创质量强市 科普益民大讲堂。</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail1.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2016-06-08</p>
                            <p>杭州地铁3号线进入小和山？建不建最快月底揭晓</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        <a href="offer-detail4.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2015-09-029</p>
                            <p>水木清华小区业主自装监控，邻居怀疑被侵犯隐私</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        
        <a href="offer-detail3.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/1.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>水木清华</p>
                            <p>2016-04-21</p>
                            <p>地铁3号线7号线有眉目了! 3号线或延至小和山！</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
        
        <a href="offer-detail4.html">
            <div class="look-list">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="wuye/2.png" class="img-responsive img-title">
                        </div>
                        <div class="col-xs-7">
                            <p>白马山庄</p>
                            <p>2013-7-3  </p>
                            <p>和山暑期班--暑假作业 精选提高 量身辅导 主动学习 快乐游戏</p>
                        </div>
                        <div class="col-xs-2">
                            
                         </div>
                    </div>
                </div>
            </div>
        </a>
    </div>

</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/hammer.min.js"></script> 
    <script src="js/index.js"></script>
    <script src="js/nprogress.js"></script>
    <script src="js/loading.js"></script>
<script>
$(".aa").click(function(){
    $(".bb").removeClass("click");
    $(this).addClass("click");
    $(".type1").fadeIn();
    $(".type2").fadeOut();
});
$(".bb").click(function(){
    $(".aa").removeClass("click");
    $(this).addClass("click");
    $(".type2").fadeIn();
    $(".type1").fadeOut();
});
</script>
</body>
</html>