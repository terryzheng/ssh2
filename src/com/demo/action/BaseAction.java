package com.demo.action;

import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseAction extends ActionSupport implements SessionAware {
	@SuppressWarnings("rawtypes")
	protected Map session;

	public void setSession(@SuppressWarnings("rawtypes") Map session) {
		this.session = session;
	}

}
