# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: admin_login.py
# codedtime: 2014-9-7   修改时间：2015-04-16 

import bottle
import mysql.connector    # 导入mysql数据库连接器
import jhu_admin.mange_index

def checkUserInfo():
    a_list = []   # 创建一个空列表
#    username = bottle.request.GET.get('usrname','').strip()  # 用户名
#    password = bottle.request.GET.get('pwd','').strip()      # 密码
    username = bottle.request.forms.get('usrname','')  # 用户名
    password = bottle.request.forms.get('pwd','')      # 密码
    if username is not None or password is not None:
        try:
            # 连接数据库 
            conn = mysql.connector.connect(user='root', password='123456', database='jhulog')     
            cursor = conn.cursor() # 创建数据游标
            
            # 执行查询
            query = ("SELECT user_login, user_pass FROM jh_users "
                      "WHERE user_login=%s and user_pass=%s")
            cursor.execute(query, (username, password))

            a_list = cursor.fetchall() # fetchone获取一个元组
            #count = int(cursor.rowcount)  # 获取元组个数 
            return a_list

        except mysql.connector.Error as err:
            print("Something went wrong: {}".format(err))
            exit()
            
        finally:
            conn.commit()  # 提交修改
            cursor.close() # 关闭数据库
            conn.close()
    else:
        return  a_list

def login():    
    if bottle.request.POST.get('submit','').strip(): #点击登录按钮
#    if bottle.request.forms.get('submit','').strip(): #点击登录按钮
        a_list = checkUserInfo()
        if a_list:
#            a_name = a_list[0][0]  # 获得用户名
#            return bottle.template('<p>welcome you! {{name}}</p>',  name = a_name)
            return jhu_admin.mange_index.index()
            #return bottle.redirect('../templates/index.html') #重定向到首页(可以)
#            return gen_index.createHomePages()
#            listdata = gen_index.createHomePages()
#            for item in listdata:
#                print (item[0])
#            return listdata
        else:
            return bottle.template('admin_login.tpl', action='/login', 
                            error_info='请输入正确的用户名或密码！')
    else:
        return bottle.template('admin_login.tpl', action='', error_info=' ')
