<!DOCTYPE html>
<html class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">

  <head>
    <meta name="generator"
    content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <title>首页--JHuLog</title>

    <link type="text/css" rel="stylesheet" href="../content_css/common.css" />
    <link type="text/css" rel="stylesheet" href="../content_css/design.css" />
    <link rel="shortcut icon" href="../content_images/favicon.ico" />
    <script src="../content_js/jquery-1.8.3.min.js"></script>
    <script src="../content_js/common.js"></script>
    <script src="../content_js/design.js"></script>
  </head>
  <body style="background-color: rgb(204, 232, 207);">
  <header class="header-wrap">
    <div class="header-inner wrap-box clearfix">
      <div class="logo-wrap">
        <h1>
          <a class="anim-link" title="首页--JHuLog"  href="#">
          <img src="#" alt="JHULOG" /> </a>
        </h1>
      </div>
      <nav class="top-nav-wrap">
        <ul class="nav-list clearfix">
          <li>
            <a class="home" href="#">Home</a>
          </li>
          <li>
            <a class="about" href="#">about</a>
          </li>
        </ul>
      </nav>
    </div>
  </header> <!--/header-->
  <section class="works-container wrap-box">
    <div class="wroks-inner clearfix">
      <div class="blog-main">
	  	% for eachItem in postData:
		<div class="main-items">
		<div class="blog-title">
			<h1>
			<a title="{{!eachItem['postTitle']}}" class="title-link anim-link" href="/article/{{!eachItem['ID']}}">{{!eachItem['postTitle']}} </a>
			</h1>
		</div>
        <div class="blog-title-info">
            <div class="title-info-list clearfix">
            <a class="title-date" href="#">{{!eachItem['postDate']}}</a> 			<!-- 写作日期 -->
            <a class="title-sort" href="#">{{!eachItem['termName']}}</a> 			<!-- 分类名 -->
            <a class="title-clicks" href="#">{{!eachItem['clickCounts']}}</a> 		<!-- 点击次数 -->
            <a class="title-cmt" href="#">{{!eachItem['commentCounts']}}</a>    	<!-- 评论次数 -->
			</div>
        </div>		
         <div class="blog-content">
            <div class="blog-txt">{{!eachItem['postExcerpt']}}</div>   <!-- 文章摘要 -->
            <div class="blog-all">
              <a class="all-link" href="#">阅读全文 &gt;</a>
            </div>
          </div>
        </div>		
		% end
        
        <div class="use-page blog-page">10 条 1/1 页</div>
      </div>
      <!--/main-->
      <div class="blog-sider">
        <div class="sider-items">
          <div class="sider-title">
            <h1>搜索</h1>
          </div>
          <div class="sider-content">
            <form action="http:#/cat/search" method="post">
            <input class="input-text mr5" type="text" name="keywords" placeholder="请输入关键字搜索" id="" /> 
            <input class="btn" type="submit" value="搜索" /></form>
          </div>
        </div>
        <!--/搜索-->
        <div class="sider-items">
          <div class="sider-title">
            <h1>文章分类</h1>
          </div>
          <div class="sider-content">
            <ul class="art-list clearfix">
              <li>
              <a title="轻慢摄影" href="http://www.jing-ui.com/cat/17">轻慢摄影</a> 
              <i class="art-num">[1]</i></li>
              <li>
              <a title="快乐绘画" href="http://www.jing-ui.com/cat/14">快乐绘画</a> 
              <i class="art-num">[20]</i></li>
              <li>
              <a title="收藏点滴" href="http://www.jing-ui.com/cat/15">收藏点滴</a> 
              <i class="art-num">[31]</i></li>
              <li>
              <a title="设计理论" href="#">设计理论</a> 
              <i class="art-num">[10]</i></li>
            </ul>
          </div>
        </div>
        <!--/文章分类-->
        <div class="sider-items">
          <div class="sider-title">
            <h1>文章归档</h1>
          </div>
          <div class="sider-content">
            <ul class="files-list">
              <li>
              <a title="2015-04" href="http://www.jing-ui.com/date/2015-04">2015年-04月</a> 
              <i class="art-num">[1]</i></li>
              <li>
              <a title="2015-01" href="http://www.jing-ui.com/date/2015-01">2015年-01月</a> 
              <i class="art-num">[1]</i></li>
              <li>
              <a title="2014-11" href="http://www.jing-ui.com/date/2014-11">2014年-11月</a> 
              <i class="art-num">[1]</i></li>
            </ul>
          </div>
        </div>
        <!--／文章归档-->
        <div class="sider-items">
          <div class="sider-content">
            <p>
            <a class="qq-link" target="_blank"
            href="http://shang.qq.com/wpa/qunwpa?idkey=1e4f2bae5a94aa0e7a99ff17513569347bb87994ed793cf323bf1c26039b5163">
              <img border="0" src="#/group.png" alt="UI设计交流 - 2群" title="UI设计交流 - 2群" />
            </a> 
            <a target="_blank" href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&amp;email=fBYTCRUfFzwNDVIfExE"
            style="text-decoration:none;">
              <img src="./#/ico_mailme_02.png" />
            </a></p>
          </div>
        </div>
      </div>
      <!--/sider-->
    </div>
  </section>
  <footer class="home-footer wrap-box">
    <div class="footer-inner">
      <div class="link-wrap">
        <div class="link-title">
          <h1>LINK</h1>
        </div>
        <div class="link-content">
          <div class="link-list clearfix">
          <a href="http://www.uehtml.com/"
          title="网页设计 界面设计 HTML5 CSS3 酷站推荐 酷站欣赏 酷站收录 酷站大全"
          target="_blank">UEhtml</a> 
          <a href="http://www.uiimg.com/" title="优艾图为UI设计师提供专业ui交互设计交流平台"
          target="_blank">优艾图网</a> 
		  </div>
        </div>
      </div>
      <div class="copyright-wrap">
        <div class="link-title">
          <h1>JING Design</h1>
        </div>
        <div class="link-content clearfix">
          <p class="copyright-info">
			  <span class="none">
			  <script src="./#/h.js" type="text/javascript"></script> 
			  <a href="http://tongji.baidu.com/hm-web/welcome/ico?s=bbddb74d682825be7cb574a4e98b76a9" target="_blank">
				<img border="0" src="./#/21.gif" width="20" height="20" />
			  </a>
			  </span> 
			  Copyright © JING Design. All Rights Reserved.
		  </p>
          <p class="browser-advice">为了使您有更好的浏览体验，建议使用 
          <a href="http://www.google.cn/intl/zh-CN/chrome/browser/" title="Chrome浏览器" target="_blank">Chrome浏览器</a></p>
        </div>
      </div>
    </div>
  </footer>
  <script type="text/javascript" src="../content_js/design.init.js"></script>
  <div class="backToTop" title="" style="display: none;"></div>
 </body>
</html>
