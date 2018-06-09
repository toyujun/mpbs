function despart(pagesize, currentpage,tohtml) {
	$.ajax({ /* 页面初始加载到第一页 */
		type : "post",
		url : '${pageContext.request.contextPath}/desPartAction_page.action',
		data : {
			pageSize : pagesize,
			currentPage : currentpage
		},
		success : function(result) {
			tohtml(result);
		}
	});
}

function tohtml(jdata){          /* 拼接表格数据的html */
	$(".content").empty();
    var res = eval(jdata);
    var items = res.rows;          //jason数组中取要显示的表格数据
    pageSize = res.pageSize;       //每页大小
    currentPage = res.currentPage;   //当前页
    totalPage = Math.ceil(res.total / res.pageSize);   //计算总页数
    var content = '';
    content += '<table id="generatedTable"><tr><th>序号</th><th>零件名</th><th>图纸</th><th>描述</th><th>创建者</th><th>状态</th><th>创建时间</th></tr>';
    for (var i = 0; i < items.length; i++) {
        content += '<tr><td>' + (i+1+(currentPage-1)*pageSize) + '</td><td>' + items[i].name + '</td><td>' + items[i].drawing + 
        '</td><td>' + items[i].descb + '</td><td>' + items[i].creater + '</td><td>' + items[i].sta + 
        '</td><td>' + items[i].time + '</td></tr>';
    }
    content += '</table>'; 
    $(".content").append(content);
    $("#pageState").html(currentPage+'/'+totalPage);
};