# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: mange_index.py
# codedtime: 2015-04-17 

import bottle
def index():
    return bottle.template('mange_index.tpl')
