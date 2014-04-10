package com.demo.action;

import java.util.ArrayList;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import com.demo.model.Order;
import com.demo.service.OrderService;

@SuppressWarnings("serial")
public class OrderAction extends BaseAction {
	private OrderService orderService;
	private List<Order> orderlist = new ArrayList<Order>();
	private Order order;
	private int pageSize = 20;
	private int currentPage = 1;
	private int totalSize;
	private int totalPage;

	public String list() {
		String condition = "1=1";
		if (currentPage < 1) {
			currentPage = 1;
		}
		totalSize = orderService.countOrders(condition);
		int mod = totalSize % pageSize;
		if (mod == 0) {
			totalPage = totalSize / pageSize;
		} else {
			totalPage = totalSize / pageSize + 1;
		}
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}
		orderlist = orderService.listOrders(condition, pageSize, currentPage);
		return "list";
	}

	public String init() {
		return "init";
	}

	public String create() {
		int ret = orderService.insertOrder(order);
		if (ret == 0) {
			return "tolist";
		} else {
			return "init";
		}
	}

	public String edit() {
		int orderId = Integer.valueOf(getParam("orderId"));
		order = orderService.getOrder(orderId);
		if (order != null) {
			return "edit";
		} else {
			return "list";
		}
	}

	public String update() {
		int ret = orderService.updateOrder(order);
		if (ret == 0) {
			return "tolist";
		} else {
			return "edit";
		}
	}

	public String delete() {
		int orderId = Integer.valueOf(getParam("orderId"));
		int ret = orderService.deleteOrder(orderId);
		System.out.println(ret);
		return "tolist";
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrderlist(List<Order> orderlist) {
		this.orderlist = orderlist;
	}

	public List<Order> getOrderlist() {
		return orderlist;
	}

	protected String getParam(String key) {
		return ServletActionContext.getRequest().getParameter(key);
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalPage() {
		return totalPage;
	}
}
