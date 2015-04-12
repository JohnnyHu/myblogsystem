# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: start_webserver.py
# codedtime: 2014-9-6 21:16:39

# 构成整个网站主框架
import bottle
import os.path as ospath
import web_bin.login_admin 
import web_bin.post_new
import web_bin.generate_index as gen_index

# 获取绝对路径
directorypath = ospath.dirname(__file__)

STATIC_PATH = ospath.abspath(ospath.join(directorypath, "static/"))
STATIC_CSS_PATH = ospath.abspath(ospath.join(STATIC_PATH, "css/"))
STATIC_JS_PATH = ospath.abspath(ospath.join(STATIC_PATH, "js/"))
STATIC_IMAGES_PATH = ospath.abspath(ospath.join(STATIC_PATH, "images/"))

WEB_BIN_PATH = ospath.abspath(ospath.join(directorypath, "web_bin/"))
TEMPLATES_PATH = ospath.abspath(ospath.join(directorypath, "templates/"))
TEMPLATES_POSTS_PATH = ospath.abspath(ospath.join(TEMPLATES_PATH, "templates/writepost"))

# ueditor静态文件绝对路径
UEDITOR_PATH = ospath.abspath(ospath.join(directorypath, "ueditor/"))

# 插入路径
#bottle.TEMPLATE_PATH.insert(0, TEMPLATES_PATH)  # 加载模板路径
#bottle.TEMPLATE_PATH.insert(0, WEB_BIN_PATH)    # 加载模板路径
#bottle.TEMPLATE_PATH.insert(0, STATIC_CSS_PATH) # 加载模板路径

## #---静态文件路径 ----# #
@bottle.route('/web_bin/<filename:path>')
def webbinpath(filename):
    return bottle.static_file(filename, root = WEB_BIN_PATH)

@bottle.route('/templates/<filename:path>')
def templatepath(filename):
    return bottle.static_file(filename, root = TEMPLATES_PATH)
    
@bottle.route('/templates/writepost/<filename:path>')
def templatepath2(filename):
    return bottle.static_file(filename, root = TEMPLATES_POSTS_PATH)
    
@bottle.route('/static/<filename:path>')
def staticpath(filename):
    return bottle.static_file(filename, root = STATIC_PATH)
    
@bottle.route('/static/css/<filename:path>')
def staticpath2(filename):
    return bottle.static_file(filename, root = STATIC_CSS_PATH)
    
@bottle.route('/static/js/<filename:path>')
def staticpath3(filename):
    return bottle.static_file(filename, root = STATIC_JS_PATH)

@bottle.route('/static/images/<filename:path>')
def staticpath4(filename):
    return bottle.static_file(filename, root = STATIC_IMAGES_PATH)

## #---xheditor静态文件路径 ----# #
@bottle.route('/article/ueditor/<filename:path>')
@bottle.route('/ueditor/<filename:path>', name = "uedpath")
def ueditorspath(filename):
    return bottle.static_file(filename, root = UEDITOR_PATH)
 
#@bottle.route('/')
#def redirected():
#    #return bottle.redirect('/go_index') # 重定向到首页

@bottle.route('/')    
@bottle.route('/go_index')
def goindex():
    return gen_index.createHomePages()
    
@bottle.route('/login_admin')
def loginadmin():
    return web_bin.login_admin.login_admin()
    
@bottle.route('/login_admin', method = 'POST')
def loginadmin2():
    return web_bin.login_admin.login_admin()

@bottle.route('/post_new')
def postnew():
   return  web_bin.post_new.submit_post()
   
@bottle.route('/post_new', method = 'POST')
def postnew2():
   return  web_bin.post_new.submit_post()
   
@bottle.route('/article/<id:int>')
def atricledisplay(id):
   return  gen_index.gen_article(id)
   
# 创建实例对象
myapp = bottle.app()

# #---web应用程序入口---# #
if __name__ == '__main__':
    bottle.debug(True)
    bottle.run(app=myapp, host="localhost", port=8088)
    #bottle.run(app=myapp, quiet=False, reloader=True)
