package com.mplbs.dao;

import java.util.List;

import com.mplbs.dao.base.BaseDao;
import com.mplbs.domain.Menu;
import com.mplbs.domain.User;

public interface MenuDao extends BaseDao<Menu>{

	List<Menu> findAllByParentID(int i);

}
