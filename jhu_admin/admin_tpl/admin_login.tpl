<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JHULOG后台管理</title>
    <link href="../admin_css/admin_login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="admin_login_wrap">
    <h1>JHULOG后台管理</h1>
    <div class="adming_login_border">
        <div class="admin_input">
            <form method="post" action="{{action}}">
                <ul class="admin_items">
                    <li>
                        <label for="user">用户名：</label>
                        <input type="text" name="usrname" value="admin" id="user" size="40" class="admin_input_style" />
                    </li>
                    <li>
                        <label for="pwd">密码：</label>
                        <input type="password" name="pwd" value="admin" id="pwd" size="40" class="admin_input_style" />
                    </li>
					<li>
						<b style="color:red;">{{error_info}}</b>
					</li>
                    <li>
                        <input type="submit" name="submit" tabindex="3" value="提交" class="btn btn-primary" /> 
                    </li>
                </ul>
            </form>
        </div>
    </div>
    <p class="admin_copyright">
		<a tabindex="5" href="#" target="_blank">返回首页</a> &copy; 2014 Powered by <a href="#" target="_blank">JohnnyHu</a>
	</p>
</div>
</body>
</html>