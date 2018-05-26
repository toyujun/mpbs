package com.mplbs.action;

import java.io.IOException;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mplbs.action.base.BaseAction;
import com.mplbs.domain.Menu;
import com.mplbs.domain.User;
import com.mplbs.service.MenuService;
import com.mplbs.service.UserService;

import net.sf.json.JSONArray;

@Controller
@Scope("prototype")
public class MenuAction extends BaseAction<Menu> {
	
		
	@Autowired
	private MenuService menuService;
	
	/**
	 * 主页菜单显示
	 */
	public String getMenu() {
		
		List<Menu> menu = menuService.findMenu();
		
		
		//将menu列表放入json
		
		String json = JSONArray.fromObject(menu).toString();
		ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
		try {
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
}
