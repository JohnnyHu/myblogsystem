<!DOCTYPE html>
<!-- saved from url=(0032)http://codingnow.cn/wp-login.php -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>JohnnyHu's blog › 登录</title>
	<link rel="stylesheet" id="login-admin-css" href="../static/css/login-admin.css" type="text/css" media="all">
<link rel="stylesheet" id="colors-fresh-css" href="../static/css/colors-fresh.css" type="text/css" media="all">
<meta name="robots" content="noindex,nofollow">
	<body class="login" ryt11838="1" style="background-color: rgb(204, 232, 207);">
	<div id="login">
		<h1><a href="http://bottlepy.org/docs/dev/" title="基于 bottle">JohnnyHu's blog</a></h1>
	
<form name="loginform" id="loginform" action="{{action}}" method = "post">
	<p>
		<label for="user_login">用户名<br>
		<input type="text" name="loginname" id="user_login" class="input" value="" size="20" tabindex="10"></label>
	</p>
	<p>
		<label for="user_pass">密码<br>
		<input type="password" name="password" id="user_pass" class="input" value="" size="20" tabindex="20"></label>
	</p>
	<p>
		<UL>
			<LI class=user_main_text1 style="color:red;">{{error_info}} </LI>
		</UL>
	</p>
	
	<p class="forgetmenot"><label for="rememberme">
    <input name="rememberme" type="checkbox" id="rememberme" value="forever" tabindex="90"> 记住我的登录信息</label>
	</p>
	<p class="submit">
		<input type="submit" name="bs-submit" id="bs-submit" class="button-primary" value="登录" tabindex="100">
		<input type="hidden" name="redirect_to" value="">
		<input type="hidden" name="testcookie" value="1">
	</p>
	
</form>

  </body>
</html>

