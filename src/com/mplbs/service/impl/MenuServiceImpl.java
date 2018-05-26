package com.mplbs.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mplbs.dao.MenuDao;
import com.mplbs.domain.Menu;
import com.mplbs.service.MenuService;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDao menuDao;
	
	@Override
	public List<Menu> findMenu() {
		// TODO Auto-generated method stub
				
		//装菜单用
		List<Menu> menuLv1 = new ArrayList<Menu>();
		//筛选一级菜单
		menuLv1 = menuDao.findAllByParentID(0);
		
		//筛选二级菜单
		for(Menu menu1:menuLv1) {
			List<Menu> menu2 = menuDao.findAllByParentID(menu1.getId());
			menu1.setChildMenu(menu2);
		}
		
		return menuLv1;
	}

}
