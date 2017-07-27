package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.fkit.domain.Book;
import org.fkit.domain.Shopcar;
import org.fkit.service.BookService;
import org.fkit.service.ShopcarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopcarController {
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	
	@Resource(name="shopcarService")
	private ShopcarService shopcarService;
	
	//通过bookID去查找Book放到shopcar页面
	@RequestMapping("/goToShopcar/{id}")
	public String goToShopcar(@PathVariable int id) {
		Book book = bookService.selectBookById(id);
		Shopcar shopcar = new Shopcar();
		shopcar.setName(book.getName());
		shopcar.setCount(book.getCount());
		shopcar.setPrice(book.getPrice());
		shopcar.setImage(book.getImage());
		shopcar.setUserid(0);
		shopcarService.insertShopcar(shopcar);
		
		return "redirect:/shopcarlist";
	}
	
	//展示购物车
	@RequestMapping("/shopcarlist")
	public String shopcarlist(Model model) {
		List<Shopcar> list = shopcarService.selectAll();
		model.addAttribute("shopcarlist", list);
		return "shopCar";
	}
	
	//删除购物车
	@RequestMapping("/deleteShopcar/{id}")
	public String deleteShopcar(@PathVariable int id) {
		shopcarService.deleteShopcar(id);
		return "redirect:/shopcarlist";
	}
	
	//修改购物车
	@RequestMapping("/updateShopcar")
	public String updateShopcar( int id, int count) {
		shopcarService.updateShopcar(count, id);
		return "redirect:/shopcarlist";
	}
		
		
	
}
