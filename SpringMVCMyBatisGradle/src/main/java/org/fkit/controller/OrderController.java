package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.fkit.domain.Order;
import org.fkit.domain.Shopcar;
import org.fkit.service.OrderService;
import org.fkit.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	
	@Resource(name="shopcarService")
	private ShopcarService shopcarService;
	
	@RequestMapping("/addOrder/{id}")
	public String addOrder(@PathVariable int id) {
		Shopcar shopcar = shopcarService.selectShopcarById(id);
		Order order = new Order();
		order.setName(shopcar.getName());
		order.setCount(shopcar.getCount());
		order.setImage(shopcar.getImage());
		order.setPrice(shopcar.getPrice());
		order.setUserid(1);
		orderService.insertOrder(order);
		
		return "redirect:/showOrder";
	}
	
	@RequestMapping("/showOrder")
	public String showOrder(Model m) {
		List<Order> list = orderService.selectAllOrder();
		m.addAttribute("orderlist",list);
		return "myOrder";
	}
	
}
