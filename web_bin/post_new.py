# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: post_new.py
# codedtime: 2014-9-17 23:24:44

import bottle, time, datetime
import web_bin.operate_mysql as operate_mysql

def submit_post():
    netloc = bottle.request.urlparts.netloc   #获取本地IP:port
    
    postValue = bottle.request.POST.decode('utf-8')
    if postValue.get('save','').strip():              # 点击提交按钮
        new_title = postValue.get('title','')
        new_content = postValue.get('content','')

#        str2 =  new_content.__class__                     # 查看变量类型 
        nowtime = time.strftime('%Y-%m-%d %H:%M:%S')  # 当前时间(格式：2014-09-21 10:27:36)
#        datetime.datetime.strftime(datetime.datetime.now(), '%Y-%m-%d %H:%M:%S')

        conn = operate_mysql.connect_sqlserver()      # 连接数据库
        cursor = conn.cursor()                        # 创建数据游标
        insert = (" INSERT INTO mb_posts (post_title, post_content, post_date) \
                    VALUES (%s, %s, %s)")
        cursor.execute(insert, (new_title, new_content, nowtime)) # 插入内容
        
        conn.commit()  # 提交修改
        cursor.close() # 关闭数据库
        
#        return "submit success."
        return bottle.template('templates/post_success.tpl', action = '/post_success') 
    else:     
        return bottle.template('templates/writeposts.tpl', ipport = netloc, action = '/post_new',) 

    
