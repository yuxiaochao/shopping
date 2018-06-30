<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>后台登录</title>
<link href="/backLogin/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Loction Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="/backStage/js/jquery-1.8.3.min.js"></script>
	<script src="/javascript/sweet-alert.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/stylesheets/sweet-alert.css">
</head>
<body>
	<h1>网上商城后台登录系统</h1>
		<div class="app-location">
			<h2>欢迎登录后台管理系统</h2>
			<div class="line"><span></span></div>
			<div class="location"><img src="/backLogin/images/location.png" class="img-responsive" alt="" /></div>
				<input id="backUsername" type="text" class="text" value="用户名" onFocus="this.value = '';"  >
				<input id="backPassword" type="password" value="Password" onFocus="this.value = '';" >
				<input id="registCode" style="display: none;" type="text" value="注册码" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '注册码';}">
				<div class="submit"><input type="submit" value="登录" id="backLoginBtn"></div>
				<div class="submit"><input style="display: none;" type="submit" value="注册" id="backRegistBtn"></div>
				<div class="clear"></div>
				<div class="new">
					<h3><a href="javascript:void(0)" id="showRegist">&lt;&nbsp;注册</a></h3>
					<h4 ><a style="display: none;" href="javascript:void(0)" id="returnLogin">&lt;&nbsp;返回登录</a></h4>
					<div class="clear"></div>
				</div>
		</div>
	<!--start-copyright-->
   		<div class="copy-right">
				<!-- <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p> -->
		</div>
	<!--//end-copyright-->
	<script src="/backLogin/js/backLogin.js"></script>
</body>
</html>