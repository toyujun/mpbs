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
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css" /> 
</head>

<body>

	<form id="loginform" name="loginform" method="post" class="niceform"
        action="userAction_login.action">
		<div class="main">
	    	<div class="mainin">
	        	<h1>零部件管理-登录</h1>
	            <div class="mainin1">
	            	<ul>
	                	<li><span>用户名：</span><input name="username" type="text" id="userName" placeholder="登录名" class="SearchKeyword"></li>
	                    <li><span>密码：</span><input type="password" name="password" id="password" placeholder="密码" class="SearchKeyword2"></li>
	                    <li><span>验证码：</span><input name="checkcode" type="text" id="checkcode" placeholder="验证码" class="SearchKeyword">
	                    <img id="loginform:vCode" src="${pageContext.request.contextPath }/validatecode.jsp"
	                        onclick="javascript:document.getElementById('loginform:vCode').src='${pageContext.request.contextPath }/validatecode.jsp?'+Math.random();"/>
	                    </li>
	                    <div id="errormessage"><s:actionerror/></div>
	                    <li><button class="tijiao">提交</button></li>
	                    <li><span><a href="${pageContext.request.contextPath }/register.jsp" target="_blank">注册新用户</a></span></li>
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
