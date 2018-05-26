package com.mplbs.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mplbs.dao.MenuDao;
import com.mplbs.dao.base.impl.BaseDaoImpl;
import com.mplbs.domain.Menu;
import com.mplbs.domain.User;

@Repository
public class MenuDaoImpl extends BaseDaoImpl<Menu> implements MenuDao {

	@Override
	public List<Menu> findAllByParentID(int i) {
		// TODO Auto-generated method stub
		
		String hql = "FROM Menu m WHERE m.parentId = ?";
		List<Menu> list = (List<Menu>) this.getHibernateTemplate().find(hql, i);
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
