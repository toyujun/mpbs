package com.mplbs.dao;

import com.mplbs.dao.base.BaseDao;
import com.mplbs.domain.User;

public interface UserDao extends BaseDao<User> {
	User findByPasswordAndUsername(String username,String password);

}
