<!doctype html>
<HTML>
<!--<html lang="zh-CN"> -->
<!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title> 全球Hot新闻发布 </title>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/Cool_styles.css">

  </head>
  
  <body>
 <header>
    <h1 class="title_name"><span>HOT新闻发布系统</span><small>by JohnnyHu</small>
		<p><a style="color:red;">欢迎你，{{username}} ！</a>|
			<!--<a href="/templates/login.tpl" targeout="_top">登录</a>| -->
			<a href="/login_flat" targeout="_top">登录</a>|
			<a href="./accnt/register" target="_top">注册</a>|
			<a href="./help/faq" target="_blank">帮助</a>|
		</p>
	</h1>
 </header>
<div id="container">
    <div class="demo">    
            <nav id="main-nav">
                <ul>
                <li id="nav-1" class="current">
                <a data-description="my website" href="/">首页</a>
                </li>
                <li id="nav-2">
                <a data-description="Domestic News" href="/">国内hot新闻</a>
                </li>
                <li id="nav-3">
                <a data-description="Foreign News" href="/">国外hot新闻</a>
                </li>
                <li id="nav-4">
                <a data-description="Life Curiositiess" href="/">生活轶事</a>
                </li>
                <li id="nav-5">
                <a data-description="all article" href="/">全部</a>
                </li>
                </ul>
            </nav><!--! end of navi --> 	
	
    </div> <!--! end of demo -->           
</div> <!--! end of #container -->

	<p>{{username}}</p>
  </body>
</html>