package com.demo.action;

import com.demo.model.User;
import com.demo.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user = new User();
	private UserService userService;

	public User getModel() {
		return user;
	}

	public String login() {
		if (user.getName() == null || user.getPassword() == null) {
			return "error";
		} else if (userService.login(user)) {
			return "ok";
		}
		return "input";
	}

	public String index() {
		return "ok";
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserService getUserService() {
		return userService;
	}
}
