<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JHULOG后台管理</title>
    <link rel="stylesheet" type="text/css" href="../admin_css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../admin_css/main.css"/>
    <script type="text/javascript" src="../admin_js/modernizr.min.js"></script>
	
	<!--ueditor Bigin-->
 	<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.min.js"></script>
	
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->	
	<script type="text/javascript" charset="utf-8" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
	<!--ueditor End-->
	
</head>

<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="/index" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="/index">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="#"><i class="icon-font">&#xe005;</i>博文管理</a></li>
                        <li><a href="#"><i class="icon-font">&#xe006;</i>分类管理</a></li>
                        <li><a href="#"><i class="icon-font">&#xe008;</i>标签管理</a></li>						
                        <li><a href="#"><i class="icon-font">&#xe004;</i>留言管理</a></li>
                        <li><a href="#"><i class="icon-font">&#xe012;</i>评论管理</a></li>
                        <li><a href="#"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="#"><i class="icon-font">&#xe033;</i>广告管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="system.html"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                        <li><a href="system.html"><i class="icon-font">&#xe045;</i>数据还原</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="/index">首页</a><span class="crumb-step">&gt;</span>
				<a class="crumb-name" href="#">博文管理</a><span class="crumb-step">&gt;</span><span>新增博文</span>
			</div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="{{action}}" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                            <tr>
                                <th><i class="require-red">*</i>标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="title" size="115" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th>内容：</th>
                                <td>
								    <script type="text/javascript">
									//实例化编辑器
									//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
									var ue = UE.getEditor('editor');
									</script>
									
									<script type="text/plain" id="editor" name="content" style="width: 85%; height:400px" >
									</script>								
									<!-- <textarea name="content" class="common-textarea" id="content" cols="30" style="width: 98%;" rows="10">
									</textarea> -->	
								</td>
                            </tr>
                            <!-- <tr>
                                <th><i class="require-red">*</i>缩略图：</th>
                                <td><input name="smallimg" id="" type="file"><!--<input type="submit" onclick="submitForm('/jscss/admin/design/upload')" value="上传图片"/></td>
                            </tr> -->							
							<tr>
								<th width="120"><i class="require-red">*</i>分类：</th>
								<td>
									<select name="colId" id="catid" class="required">
										<option value="">请选择</option>
										<option value="19">C++之悟</option><option value="20">Java之感</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>标签：</th>	
								<td><input class="common-text" name="tags" size="80" type="text"></td>
							 </tr>															
							</tr>
							<tr>
								<th>作者：</th>	
								<td>
								<input class="common-text" name="author" size="10" value="JohnnyHu" type="text">
								</td>
							 </tr>
							<tr>
								<th>写作日期：</th>	
								<td>
								<input class="common-text" name="datetime" size="40" type="datetime-local""> 
								</td>
							 </tr>							 
                            <tr>
                                <th></th>
                                <td class="tc">
                                    <input class="btn btn-primary btn6 mr10" name="submitPost" value="发布文章" type="submit"> 
									<input class="btn btn6" onclick="history.go(-1)" name="saveDraft" value="保存草稿" type="button" >
                                </td>
                            </tr>
                        </tbody>
					</table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>