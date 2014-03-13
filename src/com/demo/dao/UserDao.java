package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import com.demo.model.User;

public class UserDao {
	private SessionFactory sessionFactory;

	public User getUser(String name, String password) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;
		try {
			user = (User) session.createCriteria(User.class)
					.add(Restrictions.eq("name", name))
					.add(Restrictions.eq("password", password)).uniqueResult();
		} catch (RuntimeException e) {
			throw e;
		}
		return user;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
