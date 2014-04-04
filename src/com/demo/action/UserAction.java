package com.demo.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.demo.model.User;
import com.demo.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>,
		SessionAware {
	private User user = new User();
	private UserService userService;
	private Map<String, User> session;

	public User getModel() {
		return user;
	}

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

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void setSession(Map session) {
		this.session = session;
	}
}
