<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<!-- 导入easyui类库 -->
<link id="easyuiTheme" rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/default.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<!-- 导入ztree类库 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/js/ztree/zTreeStyle.css"
	type="text/css" />
<script
	src="${pageContext.request.contextPath }/js/ztree/jquery.ztree.all-3.5.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>

</head>

<body>
	<div id="lbNormal" style="font-size: 30px; width: 30%; text-align: center; margin: 40px auto">用户注册</div>
	<form>
		<div id="idInputLine" class="loginFormIpt" style="width: 400px; margin: 5px auto;">
			<label for="idInput" class="placeholder" id="idPlaceholder">请输入要注册的用户名：</label>
			<input id="loginform:idInput" type="text" name="username" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="emailInputLine" class="loginFormIpt" style="width: 400px; margin: 5px auto;">
			<label for="emailInput" class="placeholder" id="emailPlaceholder">请输入Email地址：</label>
			<input id="loginform:emailInput" type="text" name="email" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="pswInputLine" class="loginFormIpt" style="width: 400px; margin: 5px auto;">
			<label for="pswInput" class="placeholder" id="pswPlaceholder">请输入密码：</label>
			<input id="loginform:pswInput" type="text" name="password" 
			class="loginFormTdIpt" maxlength="50" />
			<label for="pswInput" class="placeholder" id="pswPlaceholder">确认密码：</label>
			<input id="loginform:pswInput" type="text" name="password" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="nickInputLine" class="loginFormIpt showPlaceholder" style="width: 280px; margin-left: 780px;">
			<label for="nickInput" class="placeholder" id="nickPlaceholder">确认密码：</label>
			<input id="loginform:nickInput" type="text" name="nickname" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="nickInputLine" class="loginFormIpt showPlaceholder" style="width: 280px; margin-left: 780px;">
			<label for="SexInput" class="placeholder" id="SexPlaceholder">请选择性别：</label>
			<input id="loginform:sexman" type="radio" name="sex" class="loginFormTdIpt" />男
			<input id="loginform:sexwoman" type="radio" name="sex" class="loginFormTdIpt" />女
		</div>

		<div id="loginform:loginBtn" class="btn btn-login" style="width: 280px; margin: 20px auto;">
			<input type="submit" name="Submit" value="提交">
			<input type="submit" name="Resignation" value="注册" />
		</div>
			
		</a>

	</form>
</body>

</html>
