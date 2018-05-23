package com.mplbs.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mplbs.dao.UserDao;
import com.mplbs.domain.User;
import com.mplbs.service.UserService;
import com.mplbs.utils.MD5Utils;

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

	@Override
	public void save(User user) {
		// 根据注册登录名获得用户对象
		User existU = userDao.getByUserName(user.getUsername());
		if(existU!=null) {
			//说明用户名已存在，抛出异常
			throw new RuntimeException("用户名已存在！");
		}
		//使用MD5加密密码
		user.setPassword(MD5Utils.md5(user.getPassword()));
		//保存用户信息
		userDao.save(user);
	}

}
