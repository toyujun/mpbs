package com.srms.dao.impl;

import java.io.Serializable;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.srms.dao.UserDao;
import com.srms.dao.base.impl.BaseDaoImpl;
import com.srms.domain.User;

@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@Override
	public User findByPasswordAndUsername(String username, String password) {
		/**
		 * 根据用户名和密码查询用户
		 */
	
		String hql = "FROM User u WHERE u.username = ? AND u.password = ?";
		List<User> list = (List<User>) this.getHibernateTemplate().find(hql, username, password);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
