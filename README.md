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
│   ├── js              # 前端页面
│   ├── json              # 前端页面
│   ├── META-INF              # 前端页面
│   ├── WEB-INF              # 前端页面
│   │   ├── favicon.ico         # 路由配置文件
│   │   ├── index.jsp             # 主页跳转
│   │   ├── panelscrew_m6x16.stl  # stl格式的演示产品模型
│   │   ├── validatecode.jsp      # 生成验证码
│   │   └── Login            # 功能模块
│   │       ├── index.js     # 路由配置文件
│   │       ├── assets       # 单独属于这个模块的静态资源文件
│   │       ├── components   # 页面组件
│   │       ├── model        # dva model
│   │       ├── service      # dva service
│   │       └── routes **    # 子路由(目录结构与父级相同)
│   ├── utils                # 工具类
│   └── assets               # 资源文件
│           ├── fonts        # 字体 & 字体图标
│           ├── images       # 图片
│           └── styles   
```

Some captures:

![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example1.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example2.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example3.png)


![image](https://github.com/toyujun/mpbs/blob/back1/WebContent/images/example4.png)

