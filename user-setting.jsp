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
	<link rel="stylesheet" type="text/css" href="css/setting.css">
	<link rel="stylesheet" type="text/css" href="css/loading.css">
	<title>个人中心设置</title>
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
<%request.setCharacterEncoding("UTF-8"); %>
<div class="list-title">
  <a href="Javascript:history.go(-1);void(0);">
    <div class="list-back">
      <img src="icon/back1.png">
    </div>
  </a>
    <div class="center-block">
   编辑资料    
  </div>
</div>
<div class="setting-bg">
     <div class="bg-set">
         <div class="set-back">
             <img src="icon/back1.png" id="back">
                设置
             <span id="userinfo_confirm">
                 确定
             </span>
         </div>
         <div class="set-content">
             <div class="container set-head">
                 <img src="images/14.jpg" id="img">
                 <input type="hidden" value="images/14.jpg" id="headImg" name="headImg">
                 <input type="hidden" value="${session.user.id}" id="user_change_id" name="id">
                 <span id="change">换一换</span>
             </div>
             <input type="text" value="" class="set-name" placeholder="请输入你的昵称..." id="username" name="name">
             <div class="set-address">
                 <ul class="address-ul clearfix">
                     <li>白马山庄</li>
                     <li>浪漫和山</li>
                     <li>西和公寓</li>
                     <li>新苑小区</li>
                     <li>水木清华</li>
                 </ul>
             </div>
         </div>
     </div>
</div>
<div class="contain">
    <div class="information">
        <div class="set-title">
            <img src="icon/setting/4-2_03.png">
            <span>信息修改</span>
            <span class="glyphicon glyphicon-menu-down"></span>
        </div>
        <ul class="list-group">
          <li class="list-group-item" id="head"> 
            <div class="container row">
                 <div class="col-xs-3">
                    头像
                </div>
                <div class="col-xs-8">
                    <img src="${session.user.headImg }" id="fimg"/>
                </div>
            </div>           
          </li>
          <li class="list-group-item " id="name">
            <div class="container row">
                <div class="col-xs-3">
                    昵称
                </div>
                <div class="col-xs-8">
                    <input type="text" value="${session.user.name }" readonly="true" id="fname">   
                </div>
            </div>   
          </li>
          <li class="list-group-item" id="address">
            <div class="container row">
                <div class="col-xs-3">
                    小区
                </div>
                <div class="col-xs-8">
                    <input type="text" value="${session.user.location_xq }" readonly="true" id="faddress">  
                </div>
            </div>       
          </li>
          <li class="list-group-item" id="hoby">
            <div class="container row">
                <div class="col-xs-3">
                    兴趣爱好
                </div>
                <div class="col-xs-8">
                    <input type="text" value="无" readonly="true"> 
                </div>
            </div>      
          </li>
        </ul>
    </div>
    <div class="other-set">
        <div class="set-title">
            <img src="icon/setting/4-2_06.png">
            <span>其他设置</span>
            <span class="glyphicon glyphicon-menu-down"></span>
        </div>
        <ul class="list-group">
          <li class="list-group-item">
            <div class="container row">
                消息提醒
            </div>               
          </li>
          <li class="list-group-item clearfix">
            <div class="container row">
                <div class="col-xs-3">
                    昵称
                </div>
                <div class="col-xs-8">
                    
                </div>
            </div>   
          </li>
          <li class="list-group-item clearfix">
            <div class="container row">
                <div class="col-xs-3">
                    清空缓存
                </div>
                <div class="col-xs-8">
                    320M
                </div>
            </div>         
          </li>
          <li class="list-group-item clearfix">
            <div class="container row">
                <div class="col-xs-3">
                    关于我们
                </div>
                <div class="col-xs-8">

                </div>
            </div>         
          </li>
        </ul>
    </div>
    <div class="loginout">
        <input type="submit" class="inputout center-block" value="退出帐号" >
    </div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/hammer.min.js"></script> 
    <script src="js/index.js"></script>
    <script src="js/nprogress.js"></script>
    <script src="js/loading.js"></script>
<script src="js/user-setting.js"></script>
<script type="text/javascript">
	$(function(){
		$("#userinfo_confirm").click(function(){
			$.ajax({
    			url:'user-change',
    			type:'post',
    			data:{id:$("#user_change_id").val(),headImg:$("#headImg").val(),name:$("#fname").val(),location_xq:$("#faddress").val()},
    			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
    			success:function(data){
    				
    			}
    		});
		});	
	});
</script>
</body>
</html>