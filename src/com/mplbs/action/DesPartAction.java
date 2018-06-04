package com.mplbs.action;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mplbs.action.base.BaseAction;
import com.mplbs.domain.DesPart;
import com.mplbs.domain.Menu;
import com.mplbs.service.DesPartService;
import com.mplbs.service.UserService;

import net.sf.json.JSONArray;

@Controller
@Scope("prototype")
public class DesPartAction extends BaseAction<DesPart> {
	
	@Autowired
	private DesPartService desPartService;
	
	public String savePart() {
		desPartService.save(model);
		return null;
	}
	
	
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

}
