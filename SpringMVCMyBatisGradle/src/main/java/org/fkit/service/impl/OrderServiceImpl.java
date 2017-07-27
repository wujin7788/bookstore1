package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Order;
import org.fkit.mapper.OrderMapper;
import org.fkit.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public void insertOrder(Order order) {
		orderMapper.insertOrder(order);
	}

	@Override
	public List<Order> selectAllOrder() {
		return orderMapper.selectAllOrder();
	}
}
