package com.demo.action;

import com.demo.model.User;
import com.demo.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class UserAction extends BaseAction implements ModelDriven<User> {
	private User user = new User();
	private UserService userService;

	public User getModel() {
		return user;
	}

	@SuppressWarnings("unchecked")
	public String login() {
		if (user.getName() == null || user.getPassword() == null) {
			return "error";
		} else if (userService.login(user)) {
			this.session.put("user", user);
			return "ok";
		}
		return "input";
	}

	public String index() {
		return "index";
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserService getUserService() {
		return userService;
	}
}
