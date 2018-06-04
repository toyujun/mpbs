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
<!-- css初始化文件 -->	
	<link rel="stylesheet" href="css/normalize.css">
<!-- css公共文件 -->	
	<link rel="stylesheet" href="css/base.css">
<script type="text/javascript">
$(function(){ 
	$.ajax({  				//加载左侧面板
	    url:'${pageContext.request.contextPath }/menuAction_getMenu.action',  
	    type:'Post',  
	    dataType:'json',  
	    success:function(data){
		var menuhtml = "";
	    	for(var i=0; i<data.length; i++){
	    		
	    		//加载一级菜单
	    		menuhtml += '<li class="nav-item"><a href="#"><span>' +data[i].daleimc+ '</span></a><ul>';
	    	    
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
	
	$(".contentPane").load("front/mainpage.html"); //初始化内容显示区域
	
  	$(".fr").on("click","a",function(){  //顶部导航栏
  		$("#contentPane").empty();
		var sId = $(this).data("id"); //获取单击id值
		switch(sId){
			case "mainpage":
				pathn = "front/mainpage.html";
				break;
			case "upload":
				pathn = "front/adminupload.html";
				break;
			case "manage":
				tableb("${pageContext.request.contextPath }/desPartAction_getAll.action");
				pathn = "front/manage.html";
				break;
		}
		/* $(".contentPane").load(pathn); */
	});
	
  	function tableb(url) {
        
        $.ajax({
            type: "post",
            url: url,
            data: {},
            success: function (result) {
                var items = eval(result);
                var content = "";
                for (var i = 0; i < items.length; i++) {
                    content = $("<tr><td>" + items[i].id + "</td><td>" + items[i].name + "</td><td>" + items[i].drawing + "</td><td>" + items[i].descb + "</td></tr>");
                    alert(content);
                    $(".contentPane").append(content);
                }
            }
        });
    };

}); 

</script>	
</head>

<body>
	<div class="w" id="main">
		<div class="w headerContainer">
			<div id="logo">Mechanical零部件管理系统</div>
		</div>
		<div class="contentContainer">
			
			<div class="w contentHeader" id="contentHeaderPane">
				<ul class="fr">
		        	<li>
		        		<a href="#" data-id="mainpage">首页</a>
		        	</li>
					<li class="space"></li>
					<li>
		        		<a href="#" data-id="upload">上传</a>
		        	</li>
					<li class="space"></li>	
					<li>
		        		<a href="#" data-id="manage">管理</a>
		        	</li>
					<li class="space"></li>	
					<li>
		        		<a href="#" data-id="help">帮助</a>
		        	</li>	
		        </ul>
		        <div class="search">
		        	<input type="text" placeholder="螺钉">
		        	<button><i></i></button>
		        </div>
			</div>
			<div class="navigationPane">
				<div class="nav">
					<ul>
					<div class="nav-top"><span>零件分类</span></div>
					</ul>
				</div>
			</div>
			<div class="contentPane"></div>
		</div>
		<div class="footer">
			<span class="copyright">Copyright © 2018</span><a href="#" target="_blank">Toyujun</a>
		</div>
	</div>
</body>
</html>