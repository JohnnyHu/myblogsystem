# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: posts_insert.py
# codedtime: 2015-4-17 00:47:52

import bottle
import jhu_admin.operate_mysql as operate_mysql

def newPosts():
    #netloc = bottle.request.urlparts.netloc   #获取本地IP:port
    
    postValue = bottle.request.POST
    if postValue.get('submitPost','').strip():  # 点击提交按钮
        title    = postValue.get('title','')
        content  = postValue.get('content','')
        excerpt  = getExcerpt(content)
        date     = postValue.get('datetime','')
    
#        str2 =  new_content.__class__                     # 查看变量类型 
#        nowtime = time.strftime('%Y-%m-%d %H:%M:%S')  # 当前时间(格式：2014-09-21 10:27:36)
#        datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S')

        #category =  postValue.get('colId','')
        #tags =  postValue.get('tags','')
        #smallimg =  postValue.get('smallimg','')
        author =  postValue.get('author','')
        
        conn = operate_mysql.connect_sqlserver()      # 连接数据库
        cursor = conn.cursor()                        # 创建数据游标
        insert = (" INSERT INTO jh_posts (post_title, post_excerpt, post_content, post_author, post_date, post_date_gmt) \
                    VALUES (%s, %s, %s, %s, %s, %s)" )
        cursor.execute(insert, (title, excerpt, content, author, date, date)) # 插入内容
        
        conn.commit()  # 提交修改
        cursor.close() # 关闭数据库
        
        return "submit success."
 #       return bottle.template('templates/post_success.tpl', action = '/post_success') 
    else:     
        return bottle.template('posts_insert.tpl', action = '/newposts')
        
# 获取文章摘要
def getExcerpt(postContent):
    index = postContent.find("<!--more-->")
    if -1 != index:
        return postContent[0:index]
    else:
        return postContent
        
        
