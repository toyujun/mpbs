<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOS主界面</title>
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>

	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
	
	
<script type="text/javascript">
$(function(){
	$.ajax({  
        url:'${pageContext.request.contextPath }/menuAction_getMenu.action',  
        type:'Post',  
        dataType:'json',  
        success:function(data){
         	var menuhtml = "";
        	for(var i=0; i<data.length; i++){
        		
        		//加载一级菜单
        		menuhtml += '<li class="nav-item"><a href="#"><span>' 
        		+data[i].daleimc+ '</span><i class="my-icon nav-more"></i></a><ul>';
        	    
				var child = data[i].childMenu;
        	   /* //二级菜单
        	    for(var j=0; j<3; j++){
        	    	menuhtml +=  '<li>'+ '<a href="#">' + '<span>' + child[j].daleimc + '</span>' + '</a>' + '</li>';
        		} */ 
        		menuhtml += '<li><a href="javascript:;"><span>站内新闻</span></a></li>';
        	 	menuhtml += '</ul>' + '</li>';
        	 	console.log(child.length);
        	}
        	$(".nav>ul").append(menuhtml);
        	
        	
        }, 
        error: function (data) {  
            alert("加载出错！");  
        }
        
	}); 
})
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="height:80px;padding:10px;background:url('./images/header_bg.png') no-repeat right;">
		<div style="font: bold 40px \5FAE\8F6F\96C5\9ED1; text-align: center;">
			基于web的机械零件浏览系统
		</div>
		<div style="position: absolute; right: 5px; bottom: 10px; ">
			<a href="javascript:void(0);" class="easyui-menubutton"
				data-options="menu:'#layout_north_pfMenu',iconCls:'icon-ok'">更换皮肤</a>
			<a href="javascript:void(0);" class="easyui-menubutton"
				data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-help'">控制面板</a>
		</div>
		<div id="layout_north_pfMenu" style="width: 120px; display: none;">
			<div onclick="changeTheme('default');">default</div>
			<div onclick="changeTheme('gray');">gray</div>
			<div onclick="changeTheme('black');">black</div>
			<div onclick="changeTheme('bootstrap');">bootstrap</div>
			<div onclick="changeTheme('metro');">metro</div>
		</div>
		<div id="layout_north_kzmbMenu" style="width: 100px; display: none;">
			<div onclick="editPassword();">修改密码</div>
			<div onclick="showAbout();">联系管理员</div>
			<div class="menu-sep"></div>
			<div onclick="logoutFun();">退出系统</div>
		</div>
	</div>
	<div class="nav">
			<script type="text/javascript" src="js/nav.js"></script>
	        <div class="nav-top">
	            <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
	        </div>
	        <ul>
	            
	        </ul>
	</div>
	<div data-options="region:'center'">
		<div id="tabs" fit="true" class="easyui-tabs" border="false">
			<div title="消息中心" id="subWarp"
				style="width:100%;height:100%;overflow:hidden">
				<iframe "style="width:100%;height:100%;border:0;"></iframe>
				<%--				这里显示公告栏、预警信息和代办事宜--%>
			</div>
		</div>
	</div>
	<div data-options="region:'south',border:false"
		style="height:50px;padding:10px;background:url('./images/header_bg.png') no-repeat right;">
		<table style="width: 100%;">
			<tbody>
				<tr>
					<td style="width: 300px;">
						<div style="color: #999; font-size: 8pt;">
							传智播客 | Powered by <a href="http://www.itcast.cn/">itcast.cn</a>
						</div>
					</td>
					<td style="width: *;" class="co1"><span id="online"
						style="background: url(${pageContext.request.contextPath }
						/images/online.png) no-repeat left;padding-left:18px;
						margin-left:3px;font-size:8pt;color:#005590;">在线人数:3</span>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	

</body>
</html>