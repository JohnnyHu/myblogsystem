# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: start_webserver.py
# codedtime: 2014-9-6 21:16:39

# 构成整个网站主框架
import bottle
import os.path as ospath
import jhu_admin.admin_login
import jhu_admin.mange_index
import jhu_admin.posts_insert

import jhu_content.posts_operate as posts_opt

# 获取绝对路径
directorypath = ospath.dirname(__file__)

#----jhu_admin文件夹的一些路径----#
PATH_JHU_ADMIN = ospath.abspath(ospath.join(directorypath, "jhu_admin/"))
PATH_ADMIN_TPL = ospath.abspath(ospath.join(PATH_JHU_ADMIN, "admin_tpl/"))
PATH_AMDIN_CSS = ospath.abspath(ospath.join(PATH_JHU_ADMIN, "admin_css/"))
PATH_AMDIN_JS = ospath.abspath(ospath.join(PATH_JHU_ADMIN, "admin_js/"))
PATH_AMDIN_FONT = ospath.abspath(ospath.join(PATH_JHU_ADMIN, "admin_fonts/"))
PATH_AMDIN_IMGAGES = ospath.abspath(ospath.join(PATH_JHU_ADMIN, "admin_images/"))

# jhu_admin静态文件路径
@bottle.route('/jhu_admin/<filename:path>')
def adminpath(filename):
    return bottle.static_file(filename, root = PATH_JHU_ADMIN)
@bottle.route('/admin_tpl/<filename:path>')
def admintplpath(filename):
    return bottle.static_file(filename, root = PATH_ADMIN_TPL)   
@bottle.route('/admin_js/<filename:path>')
def adminjspath(filename):
    return bottle.static_file(filename, root = PATH_AMDIN_JS)
@bottle.route('/admin_css/<filename:path>')
def admincsspath(filename):
    return bottle.static_file(filename, root = PATH_AMDIN_CSS)
@bottle.route('/admin_fonts/<filename:path>')
def adminfontspath(filename):
    return bottle.static_file(filename, root = PATH_AMDIN_CSS)
@bottle.route('/admin_imgages/<filename:path>')
def adminimagespath(filename):
    return bottle.static_file(filename, root = PATH_AMDIN_IMGAGES)

# 插入路径
bottle.TEMPLATE_PATH.insert(0, PATH_ADMIN_TPL)  # 加载模板路径
@bottle.route('/login')
@bottle.route('/login', method = 'POST')
def adminLogin():
    return jhu_admin.admin_login.login()
    
@bottle.route('/index')
def adminIndex():
    return jhu_admin.mange_index.index()
    
@bottle.route('/newposts')
@bottle.route('/newposts', method = 'POST')
def addposts():
    return jhu_admin.posts_insert.newPosts()

 
#----jhu_content文件夹的一些路径----#
PATH_JHU_CONTENT = ospath.abspath(ospath.join(directorypath, "jhu_content/"))
PATH_CONTENT_TPL = ospath.abspath(ospath.join(PATH_JHU_CONTENT, "content_tpl/"))
PATH_CONTENT_CSS = ospath.abspath(ospath.join(PATH_JHU_CONTENT, "content_css/"))
PATH_CONTENT_JS = ospath.abspath(ospath.join(PATH_JHU_CONTENT, "content_js/"))
PATH_CONTENT_FONT = ospath.abspath(ospath.join(PATH_JHU_CONTENT, "content_fonts/"))
PATH_CONTENT_IMGAGES = ospath.abspath(ospath.join(PATH_JHU_CONTENT, "content_images/"))
PATH_CONTENT_IMGAGES_COMMON = ospath.abspath(ospath.join(PATH_CONTENT_IMGAGES, "common/"))

# jhu_content静态文件路径
@bottle.route('/jhu_content/<filename:path>')
def contentpath(filename):
    return bottle.static_file(filename, root = PATH_JHU_CONTENT)
@bottle.route('/content_tpl/<filename:path>')
def contenttplpath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_TPL)   
@bottle.route('/content_js/<filename:path>')
def contentjspath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_JS)
@bottle.route('/content_css/<filename:path>')
def contentcsspath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_CSS)
@bottle.route('/content_fonts/<filename:path>')
def contentfontspath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_FONT)
@bottle.route('/content_imgages/<filename:path>')
def contentimagespath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_IMGAGES)
@bottle.route('/content_imgages/common/:filename')
def contentimagescommonpath(filename):
    return bottle.static_file(filename, root = PATH_CONTENT_IMGAGES_COMMON)

# 插入路径
bottle.TEMPLATE_PATH.insert(0, PATH_CONTENT_TPL)  # 加载模板路径
@bottle.route('/articles')
def allPosts():
   return  posts_opt.createHomePages()
@bottle.route('/article/<id:int>')
def eachPost(id):
   return  posts_opt.gen_article(id)

#----jhu_includes文件夹的一些路径----#
PATH_JHU_INCLUDES = ospath.abspath(ospath.join(directorypath, "jhu_includes/"))

   
# 创建实例对象
myapp = bottle.app()

# #---web应用程序入口---# #
if __name__ == '__main__':
    bottle.debug(True)
    bottle.run(app=myapp, host="localhost", port=8091)
    #bottle.run(app=myapp, quiet=False, reloader=True)
