# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: start_webserver.py
# codedtime: 2014-9-6 21:16:39

import os.path
path1 = os.path.join(os.path.dirname(__file__), "templates/")
path2 = os.path.abspath(path1)
filename = os.path.basename(path2) #返回文件名

dirname = os.path.dirname(__file__)
STATIC_CSS_PATH = path1+ "/css"
STATIC_IMAGES_PATH = path2 + "/images"
print(dirname)
print(path1)
print(path2)
print(filename)

print(STATIC_CSS_PATH)
print(STATIC_IMAGES_PATH)
