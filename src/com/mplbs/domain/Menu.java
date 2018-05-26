package com.mplbs.domain;

import java.util.List;

//主页菜单
public class Menu {
	
	private Integer id;
	private String daleimc;
	private Integer parentId;
	private List<Menu> childMenu;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDaleimc() {
		return daleimc;
	}
	public void setDaleimc(String daleimc) {
		this.daleimc = daleimc;
	}
	public Integer getparentId() {
		return parentId;
	}
	public void setparentId(Integer parentId) {
		this.parentId = parentId;
	}
	public List<Menu> getChildMenu() {
		return childMenu;
	}
	public void setChildMenu(List<Menu> childMenu) {
		this.childMenu = childMenu;
	}
	

}
