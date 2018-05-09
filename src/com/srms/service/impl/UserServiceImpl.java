package com.srms.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.srms.dao.UserDao;
import com.srms.domain.User;
import com.srms.service.UserService;
import com.srms.utils.MD5Utils;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao userDao;

	public User login(User user) {
		// TODO Auto-generated method stub
		String username = user.getUsername();
		String password = user.getPassword();
		//md5加密
		password = MD5Utils.md5(password);
		User user1 = userDao.findByPasswordAndUsername(username,password);
		return user1;
	}

}
