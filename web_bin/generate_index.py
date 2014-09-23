# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: generate_index.py
# codedtime: 2014-9-21 11:46:12

import bottle
import web_bin.operate_mysql as operate_mysql

listdata = []
def createHomePages():
    conn = operate_mysql.connect_sqlserver()      # 连接数据库
    cursor = conn.cursor()                        # 创建数据游标
    
    # 返回最新的n条数据()SELECT * FROM table order by time desc LIMIT n
    #query = ("SELECT * FROM mb_posts order by post_date desc LIMIT 2")
    query = ("SELECT ID, post_title, post_content FROM mb_posts order by post_date desc LIMIT 5")
    cursor.execute(query) # 查询内容
    
    dbdata = cursor.fetchall()  # fetchone获取一个元组
#    count = int(cursor.rowcount)    # 获取元列表中元组个数 
    conn.commit()  # 提交修改
    cursor.close() # 关闭数据库
    
    return bottle.template('templates/index.tpl', listdata = dbdata)
#    return dbdata

def gen_article(index):
    conn = operate_mysql.connect_sqlserver()      # 连接数据库
    cursor = conn.cursor()  
    # 创建数据游标
    query = ("SELECT post_content FROM mb_posts WHERE ID=%s")
    cursor.execute(query, (index, )) # 查询内容
    
    content = cursor.fetchall()  # 
    conn.commit()  # 提交修改
    cursor.close() # 关闭数据库
    
    return content[0][0]
    
    
    
    
