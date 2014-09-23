# -*- coding:  utf-8 -*-
#!/usr/bin/python
# filename: login_admin.py
# codedtime: 2014-9-7 11:26:11

import bottle
import mysql.connector    # 导入mysql数据库连接器
import web_bin.generate_index as gen_index

def check_userinfo():
    a_list = []   # 创建一个空列表
#    username = bottle.request.GET.get('loginname','').strip()  # 用户名
#    password = bottle.request.GET.get('password','').strip()   # 密码
    username = bottle.request.forms.get('loginname','')  # 用户名
    password = bottle.request.forms.get('password','')   # 密码
    if username is not None or password is not None:
        try:
            # 连接数据库 
            conn = mysql.connector.connect(user='root', password='123456', database='myblog')     
            cursor = conn.cursor() # 创建数据游标
            
            # 执行查询
            query = ("SELECT username, password FROM mb_users "
                      "WHERE username=%s and password=%s")
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

def login_admin():    
    if bottle.request.POST.get('bs-submit','').strip(): #点击登录按钮
    #if bottle.request.forms.get('bs-submit','').strip(): #点击登录按钮
        a_list = check_userinfo()
        if a_list:
            #a_name = a_list[0][0]  # 获得用户名
            #return template('<p>welcome you! {{name}}</p>',  name = a_name)
            return bottle.template('templates/index_admin.tpl', action='/post_new')
            #return bottle.redirect('../templates/index.html') #重定向到首页(可以)
#            return gen_index.createHomePages()
#            listdata = gen_index.createHomePages()
#            for item in listdata:
#                print (item[0])
#            return listdata
        else:
            return bottle.template('templates/login_admin.tpl', action='/login_admin', 
                            error_info='请输入正确的用户名或密码！')
    else:
        return bottle.template('templates/login_admin.tpl', action='', error_info=' ')
    
