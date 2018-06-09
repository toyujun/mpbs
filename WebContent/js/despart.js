function despart(pagesize, currentpage) {
	$.ajax({ /*页面初始加载到第一页 */
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