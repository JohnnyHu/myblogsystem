<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>撰写新文章</title>
	<link rel="stylesheet" href="./static/css/common.css" type="text/css" media="screen" />

	<script type="text/javascript" charset="utf-8" src="http://{{ipport}}/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="http://{{ipport}}/ueditor/ueditor.all.min.js"></script>
	
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->	
	<script type="text/javascript" charset="utf-8" src="http://{{ipport}}/ueditor/lang/zh-cn/zh-cn.js"></script>

    <style type="text/css">
        div{
            width:100%;
        }
    </style>
</head>

<body>
<h1>撰写新文章</h1>

<div>
	<form  action="{{action}}" method="post" >
		键入标题：
		<input type="text" name="title" size="100" value="" id="title" autocomplete="off">
		
		<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>

		<input type="submit" name="save" value="提交">
	</form>
	
</div>
    <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('editor');
    </script>
</body>

</html>