package com.demo.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.demo.model.Order;

public class OrderDao {
	private SessionFactory sessionFactory;

	public Order getOrder(int orderid) {
		Session session = sessionFactory.getCurrentSession();
		Order order = null;
		try {
			order = (Order) session.get(Order.class, orderid);
		} catch (RuntimeException e) {
			throw e;
		}
		return order;
	}

	public int getOrdersCount(String condition) {
		Session session = sessionFactory.getCurrentSession();
		int count = 0;
		try {
			count = Integer.parseInt(session
					.createSQLQuery("select count(*) from mms_order where ?")
					.setString(0, condition).uniqueResult().toString());
		} catch (RuntimeException e) {
			throw e;
		}
		return count;
	}

	@SuppressWarnings("unchecked")
	public List<Order> listOrders(String condition, int pageSize, int pageNum) {
		Session session = sessionFactory.getCurrentSession();
		List<Order> orders = null;
		try {
			orders = session.createSQLQuery("select * from mms_order where ?")
					.addEntity(Order.class).setString(0, condition)
					.setMaxResults(pageSize)
					.setFirstResult(pageSize * (pageNum - 1)).list();
		} catch (RuntimeException e) {
			throw e;
		}
		return orders;
	}

	public int insertOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		try {
			System.out.println(order.getMobile());
			session.save(order);
		} catch (Exception e) {
			return -1;
		}
		return 0;
	}

	public int updateOrder(Order order) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.update(order);
		} catch (Exception e) {
			return -1;
		}
		return 0;
	}

	public int deleteOrder(int orderId) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Order order = (Order) session.load(Order.class, orderId);
			session.delete(order);
		} catch (Exception e) {
			return -1;
		}
		return 0;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
