# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: start_webserver.py
# codedtime: 2014-9-6 21:16:39

import bottle
from os.path import abspath, dirname, join
# 指定的模板路径
CUSTOM_TPL_PATH = abspath(join(dirname(__file__), "templates/"))
# 静态文件
WEB_Bin_PATH = abspath(join(dirname(__file__), "web_bin/"))

bottle.TEMPLATE_PATH.insert(0, CUSTOM_TPL_PATH)     # 加载templates路径
bottle.TEMPLATE_PATH.insert(0, WEB_Bin_PATH)        # 加载web_bin路径

@bottle.route('/')
def index():
    return bottle.redirect('./templates/index.html') # 重定向到首页(可以 )
    
@bottle.route('/web_bin/<filename:path>')
def download(filename):
    return bottle.static_file(filename, root=WEB_Bin_PATH)# 绝对路径

#templates目录
@bottle.route('/templates/<filename:path>')
def login(filename):
    return bottle.static_file(filename, root=CUSTOM_TPL_PATH)# 绝对路径
   
bottle.run(host='localhost', port=8028, debug = True)
