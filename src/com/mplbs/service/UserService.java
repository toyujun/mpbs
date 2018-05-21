package com.mplbs.service;

import com.mplbs.domain.User;

public interface UserService {

	public User login(User model);

	public void save(User model);
}
