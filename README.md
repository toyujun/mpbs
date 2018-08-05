# mpbs
Manufature company index with product browser web system
## Structure:
```
.
├── src                      # 主程序目录
│   └──com.mplbs
│   │   ├── action      # 控制器，管理service的调度和跳转
│   │   │── dao         # 数据库访问
│   │   │── domain      # javaBean实体对象
│   │   │── service     # 业务逻辑处理
│   │   │── utils       # 密码md5加密等工具类
│   ├── applicationContext.xml  #spring配置文件
│   ├── db.properties   #Hibernate映射配置
│   ├── log4j.properties #控制台输出配置
│   └── struts.xml      #Struts2配置文件

├── webcontent
│   ├── css            # 网页样式
│   ├── fonts          # 图标字体
│   ├── front              # 前端页面
│   ├── images               # 图片
│   ├── js              # js文件
│   ├── json              # 表格数据
│   ├── META-INF              
│   ├── WEB-INF              
│   ├── favicon.ico         # 路由配置文件
│   ├── index.jsp             # 主页跳转
│   ├── panelscrew_m6x16.stl  # stl格式的演示产品模型
│   ├── validatecode.jsp      # 生成登录验证码
│   └── utils                # 工具类
```

Some captures:

![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example1.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example2.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example3.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example4.png)

