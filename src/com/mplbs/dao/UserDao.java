package com.mplbs.dao;

import com.mplbs.dao.base.BaseDao;
import com.mplbs.domain.User;

public interface UserDao extends BaseDao<User> {
	User findByPasswordAndUsername(String username,String password);
	
	//根据用户名查询user对象
	User getByUserName(String username);

}
