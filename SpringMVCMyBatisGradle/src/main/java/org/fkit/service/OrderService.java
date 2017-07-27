package org.fkit.service;

import java.util.List;

import org.fkit.domain.Order;

public interface OrderService {
	void insertOrder(Order order);
	
	
	List<Order> selectAllOrder();
}
