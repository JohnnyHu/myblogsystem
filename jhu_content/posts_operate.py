# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: posts_operate.py
# codedtime: 2014-4-26 11:46:12

import bottle
import jhu_admin.operate_mysql as operate_mysql

def getPostData():
    conn = operate_mysql.connect_sqlserver()      # 连接数据库
    cursor = conn.cursor()                        # 创建数据游标
    
    # 返回最新的n条数据()
    query = ("SELECT ID, post_title, post_excerpt, post_content, post_date, post_date_gmt, post_author \
              FROM jh_posts ORDER BY post_date desc LIMIT 10")
    cursor.execute(query) # 查询内容
    
    dbdata = cursor.fetchall()  # fetchone获取一个元组
#    count = int(cursor.rowcount)    # 获取元列表中元组个数 
    conn.commit()  # 提交修改
    cursor.close() # 关闭数据库
    
    postData = []
    for item in dbdata:
        eachDic = {}
        eachDic['ID']           = item[0]
        eachDic['postTitle']    = item[1]
        eachDic['postExcerpt']  = item[2]
        eachDic['postContent']  = item[3]
        eachDic['postDate']     = item[4]
        eachDic['postAuthor']   = item[6]
        
        eachDic['termName']     = 'C++'
        eachDic['clickCounts']  = '20'
        eachDic['commentCounts']= '10'
        
        postData.append(eachDic)
    
    return postData

def createHomePages():
    return bottle.template('homepage.tpl', postData = getPostData())

def gen_article(index):  
    conn = operate_mysql.connect_sqlserver()      # 连接数据库
    cursor = conn.cursor()  
    # 创建数据游标
    query = ("SELECT post_title, post_excerpt, post_content, post_date, post_date_gmt, post_author \
              FROM jh_posts WHERE ID=%s")
    cursor.execute(query, (index, )) # 查询内容
    
    oneItem = cursor.fetchone() 
    
    conn.commit()  # 提交修改
    cursor.close() # 关闭数据库
    
    eachDic = {}
    eachDic['postTitle']    = oneItem[0]
    eachDic['postExcerpt']  = oneItem[1]
    eachDic['postContent']  = oneItem[2]
    eachDic['postDate']     = oneItem[3]
    eachDic['postAuthor']   = oneItem[5]
    
    eachDic['termName']     = 'C++'
    eachDic['clickCounts']  = '20'
    eachDic['commentCounts']= '10'
    
    return bottle.template('article.tpl', item = eachDic)

