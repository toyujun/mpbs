<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
	<div id="lbNormal" style="font-size: 30px; width: 30%; text-align: center; margin: 40px auto">用户登录</div>
	<form id="loginform" name="loginform" method="post" class="niceform"
        action="userAction_login.action">
		<div id="idInputLine" class="loginFormIpt" style="width: 300px; margin: 5px auto;">
			<label for="idInput" class="placeholder" id="idPlaceholder">帐号：</label>
			<input id="loginform:idInput" type="text" name="username" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="pswInputLine" class="loginFormIpt" style="width: 300px; margin: 5px auto;">
			<label for="pswInput" class="placeholder" id="pswPlaceholder">密码：</label>
			<input id="loginform:pswInput" type="text" name="password" 
			class="loginFormTdIpt" maxlength="50" />
		</div>
		<div id="codeInputLine" class="loginFormIpt showPlaceholder" style="width: 280px; margin-left: 780px;">
			<label for="yzmInput" class="placeholder" id="yzmPlaceholder">验证码：</label>
			<input id="loginform:yzmInput" class="loginFormTdIpt" type="text" style="width: 40px;" 
									name="checkcode" title="请输入验证码" />
			<img id="loginform:vCode" src="${pageContext.request.contextPath }/validatecode.jsp"
									onclick="javascript:document.getElementById('loginform:vCode').src='${pageContext.request.contextPath }/validatecode.jsp?'+Math.random();" />
		</div>	
		<div id="loginBtn" style="width: 280px; margin-left: 780px;">
		<a onclick="document.getElementById('loginform').submit();" href="#" id="loginform:j_id19" name="loginform:j_id19">
		<span id="loginform:loginBtn" class="btn btn-login">登录</span>
		</a>
		</div>
		
		<div id="regBtn" style="width: 280px; margin-left: 780px;">
		<a href="${pageContext.request.contextPath }/register.jsp" id="regBtnlink">
		<span id="regBtn" class="btn btn-reg">注册</span>
		</a>
		</div>
		
		<div align="center">
			<br/>
			<font  color="red">
				<s:actionerror/>
			</font>
		</div>

	</form>
</body>

</html>
