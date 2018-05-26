package com.mplbs.dao;

import java.util.List;

import com.mplbs.domain.Menu;

public interface MenuDao {

	List<Menu> findAllByParentID(int i);

}
