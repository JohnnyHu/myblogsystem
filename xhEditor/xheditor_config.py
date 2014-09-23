# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: xheditor_config.py
# codedtime: 2014-9-17 23:15:54

import bottle
import os.path as ospath

# 获取绝对路径
directorypath = ospath.dirname(__file__)

XHEDITOR_PATH = ospath.abspath(ospath.join(directorypath, "xhEditor/"))
XHEDITOR_STATIC_PATH = ospath.abspath(ospath.join(XHEDITOR_PATH, "static/"))
XHEDITOR_JS_PATH = ospath.abspath(ospath.join(XHEDITOR_STATIC_PATH, "js/"))
XHEDITOR_CSS_PATH = ospath.abspath(ospath.join(XHEDITOR_STATIC_PATH, "css/"))
XHEDITOR_LANG_PATH = ospath.abspath(ospath.join(XHEDITOR_PATH, "xheditor_lang/"))

## #---xheditor静态文件路径 ----# #
@bottle.route('/xhEditor/<filename:path>')
def xheditorspath(filename):
    return bottle.static_file(filename, root = XHEDITOR_PATH)

@bottle.route('/xhEditor/static/<filename:path>')
def xhstaticpath(filename):
    return bottle.static_file(filename, root = XHEDITOR_STATIC_PATH)
    
@bottle.route('/xhEditor/static/js/<filename:path>')
def xhjspath(filename):
    return bottle.static_file(filename, root = XHEDITOR_JS_PATH)
    
@bottle.route('/xhEditor/static/css/<filename:path>')
def xhcsspath(filename):
    return bottle.static_file(filename, root = XHEDITOR_CSS_PATH)
    
@bottle.route('/xhEditor/xheditor_lang/<filename:path>')
def xhlangpath(filename):
    return bottle.static_file(filename, root = XHEDITOR_LANG_PATH)
 
def loadxheditor():
    return  bottle.template('xhEditor/writeposts.tpl') 
    
    
    
