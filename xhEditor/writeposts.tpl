<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>撰写新文章</title>
<link rel="stylesheet" href="./static/css/common.css" type="text/css" media="screen" />

<script type="text/javascript" src="http://{{ipport}}/xhEditor/static/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="http://{{ipport}}/xhEditor/xheditor-1.2.1.min.js"></script>
<script type="text/javascript" src="http://{{ipport}}/xhEditor/xheditor_lang/zh-cn.js"></script>

</head>

<body>
<h1>撰写新文章</h1>
<form  action="{{action}}" method="post" >
	键入标题：
	<input type="text" name="title" size="100" value="" id="title" autocomplete="off">
	<textarea id="elm1" name="content" class="xheditor" rows="20" cols="60" style="width: 80%">
	</textarea><br /><br />
	<input type="submit" name="save" value="提交">
</form>

</body>

</html>