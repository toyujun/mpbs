<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mechanical零件管理系统</title>
<!-- 导入jquery核心类库 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$.ajax({  
    url:'${pageContext.request.contextPath }/menuAction_getMenu.action',  
    type:'Post',  
    dataType:'json',  
    success:function(data){
	var menuhtml = "";
    	for(var i=0; i<data.length; i++){
    		
    		//加载一级菜单
    		menuhtml += '<li><a href="#"><span>' +data[i].daleimc+ '</span><i class="my-icon nav-more"></i></a><ul>';
    	    
			var child = data[i].childMenu;
    	    //二级菜单
    	    for(var j=0; j<child.length; j++){
    	    	menuhtml +=  '<li> <a href="#"> <span>' + child[j].daleimc + '</span> </a> </li>';
    		} 
    	 	menuhtml += '</ul> </li>';
    	 	
    	}
    	$(".nav>ul").append(menuhtml);
    }, 
    error: function (data) {  
        alert("加载出错！");  
    }
    
});
</script>	
</head>

<body>
	<div id="main">
		<div id="headerContainer">
			<div id="logo">Mechanical零部件管理系统</div>
		</div>
		<div id="contentContainer">
			<div id="navigationPane">
				<div class="nav">
		        	<ul></ul>
				</div>
			</div>
			<div id="contentHeaderPane"></div>
			<div id="contentPane"></div>
		</div>
		<div id="footerContainer"></div>
	</div>
</body>
</html>