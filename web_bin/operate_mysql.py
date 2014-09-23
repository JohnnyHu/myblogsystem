# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: operate_mysql.py
# codedtime: 2014-9-16 22:18:44
import mysql.connector    # 导入mysql数据库连接器

def connect_sqlserver():
    # 连接数据库 
    conn = mysql.connector.connect(user='root', password='123456', database='myblog')     
    return conn
