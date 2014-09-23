<!doctype html>
<html lang="zh-CN">
<!--<![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title> JohnnyHu的博客->首页</title>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/Cool_styles.css">

  </head>
  
<body>
	<div id="main">
	% for each_item in listdata:
	<h2><a class="title" href="/article/{{each_item[0]}}" >{{each_item[1]}}</a></h2>
	% end
	</div>
	
</body>
</html>