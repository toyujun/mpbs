package com.mplbs.action;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mplbs.action.base.BaseAction;
import com.mplbs.domain.DesPart;
import com.mplbs.domain.Menu;
import com.mplbs.service.DesPartService;
import com.mplbs.service.UserService;
import com.mplbs.utils.PageBean;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

@Controller
@Scope("prototype")
public class DesPartAction extends BaseAction<DesPart> {
	
	@Autowired
	private DesPartService desPartService;
	
	public String savePart() {
		desPartService.save(model);
		return null;
	}
	
	//显示所有数据
	public String getAll() {
	List<DesPart> desp = desPartService.findAll();
	
	
	//将desp列表放入json
	
	String json = JSONArray.fromObject(desp).toString();
	ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
	try {
		ServletActionContext.getResponse().getWriter().print(json);
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	return null;
	}
	
	
	private int currentPage;
	private int pageSize;
	/**
	 * 分页查询
	 * @return
	 * @throws IOException 
	 */
	public String page() throws IOException {
	    PageBean pageBean = new PageBean();
	    pageBean.setCurrentPage(currentPage);
	    pageBean.setPageSize(pageSize);
	    //创建离线提交查询对象
	    DetachedCriteria detachedCriteria = DetachedCriteria.forClass(DesPart.class);
	    pageBean.setDetachedCriteria(detachedCriteria);
	    desPartService.pageQuery(pageBean);
	     
	    //使用json-lib将PageBean对象转为json，通过输出流写回页面中
	    //JSONObject---将单一对象转为json
	    //JSONArray----将数组或者集合对象转为json
	    JsonConfig jsonConfig = new JsonConfig();
	    //指定哪些属性不需要转json
	    jsonConfig.setExcludes(new String[]{"currentPage","detachedCriteria","pageSize","total"});
	    String json = JSONObject.fromObject(pageBean,jsonConfig).toString();
	    ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
	    ServletActionContext.getResponse().getWriter().print(json);
	    return NONE;
	}
	
	

}
