<!DOCTYPE html>
<!-- saved from  -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">

	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../static/css/css-login.css" type="text/css" media="screen" > 
	<script type="text/javascript" src="../static/js/common.js"> </script>
	
	<title>JohnnyHu's blog › 登录</title>
	</head>
	
	<body style="background-color: rgb(204, 232, 207);">
		<form name="f" method="post" action="{{action}}">
			<div class="login-main">
				<div class="login-top"></div>
				<div class="login-logo">
				<a href="http://www.emlog.net/" target="_blank"><img src="../static/images/login_logo.png" alt="emlog" width="294" height="68"></a>
				</div>
				<div class="login-input">
					<span>用户名</span>
					<div><input type="text" name="loginname" id="user_login"></div>
					<span>密码</span>
					<div><input type="password" name="password" id="user_pass"></div>
				</div>
				
				<div class="login-button">
					<div class="checkbox"> <input type="checkbox" name="ispersis" id="ispersis" value="1">
					<span><label for="ispersis">记住我</label></span>
					</div>
					<div class="button">
					<input type="submit" name="bs-submit" id="bs-submit" value=" 登 录" class="submit">

					</div>
				</div>
				<div style=" clear:both;"></div>
				<div class="login-ext"></div>
				<div class="login-bottom"></div>
				<div class="back">
					<a href="http://localhost/">«返回首页</a> | 
					<a href="http://localhost/" target="_blank">忘记密码?</a>
				</div>
			</div>
			<div class="login-error">{{error_info}}</div>
		</form>
	<script>focusEle('user');</script>
	
	</body>
</html>