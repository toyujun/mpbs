<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css" /> 
	<link rel="stylesheet" href="css/normalize.css">
</head>

<body>

	<form id="loginform" name="loginform" method="post" class="niceform"
        action="userAction_register.action">
		<div class="main">
	    	<div class="mainin">
	        	<h1>零部件管理-注册</h1>
	            <div class="mainin2">
	            	<ul>
	                	<li><span>请输入要注册的用户名：</span><input name="username" type="text" id="userName" placeholder="登录名" class="SearchKeyword"></li>
	                    <li><span>请输入昵称：</span><input name="username" type="text" id="userName" placeholder="登录名" class="SearchKeyword"></li>
	                    <li><span>请输入密码：</span><input type="password" name="password" id="password" placeholder="密码" class="SearchKeyword2"></li>
	                    <li><span>请输入Email地址：</span><input name="email" type="text" id="email" placeholder="Email地址" class="SearchKeyword"></li>
	                    <li><span>请输入电话号码：</span><input name="telephone" type="text" id="telephone" placeholder="电话号码" class="SearchKeyword"></li>
	                    <li><span>请选择性别：</span><input name="gender" type="radio" id="sexman" value="m">男
	                    <input name="gender" type="radio" id="sexwoman" value="w" >女
                    	</li>
	                    <div id="errormessage"><s:actionerror/></div>
	                    <li><button class="tijiao">提交</button></li>
	                    <li><span><a href="${pageContext.request.contextPath }/login.jsp" target="_blank">已注册登录</a></span></li>
	                </ul>
	            </div>
	            <div class="footpage"><span style="" font-family:arial;""="">Copyright </span>2018 <a href="#" target="_blank">Toyujun</a> </div>
	        </div>
    	</div>
	<!-- <img src="images/loading.gif" id="loading" style="  position:absolute;" />
	<div id="POPLoading" class="cssPOPLoading">
	    <div style=" height:110px; border-bottom:1px solid #9a9a9a">
	        <div class="showMessge"></div>
	    </div>
	    <div style=" line-height:40px; font-size:14px; letter-spacing:1px;">
	        <a onclick="puc()">确定</a>
	    </div>
	</div> -->

	</form>
</body>

</html>
