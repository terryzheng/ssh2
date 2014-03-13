package com.demo.service;

import java.util.List;

import com.demo.dao.OrderDao;
import com.demo.model.Order;

public class OrderService {
	private OrderDao orderDao;

	public List<Order> listOrders(String condition, int pageSize, int pageNum) {
		return orderDao.listOrders(condition, pageSize, pageNum);
	}

	public int countOrders(String condition) {
		return orderDao.getOrdersCount(condition);
	}

	public Order getOrder(int orderId) {
		return orderDao.getOrder(orderId);
	}

	public int insertOrder(Order order) {
		return orderDao.insertOrder(order);
	}

	public int updateOrder(Order order) {
		return orderDao.updateOrder(order);
	}

	public int deleteOrder(int orderId) {
		return orderDao.deleteOrder(orderId);
	}

	public void setOrderDao(OrderDao userDao) {
		this.orderDao = userDao;
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}
}
