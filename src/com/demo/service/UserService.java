package com.demo.service;

import com.demo.dao.UserDao;
import com.demo.model.User;
import com.demo.util.Md5Encrypt;

public class UserService {
	private UserDao userDao;

	public boolean login(User user) {
		User u = userDao.getUser(user.getName(),
				Md5Encrypt.md5(user.getPassword()));
		if (u == null) {
			return false;
		}
		return true;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

}
