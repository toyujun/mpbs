package com.srms.dao;

import com.srms.dao.base.BaseDao;
import com.srms.domain.User;

public interface UserDao extends BaseDao<User> {
	User findByPasswordAndUsername(String username,String password);

}
