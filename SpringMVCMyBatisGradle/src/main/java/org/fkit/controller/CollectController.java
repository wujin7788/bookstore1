package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.fkit.domain.Book;
import org.fkit.domain.Collect;
import org.fkit.service.BookService;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CollectController {
	
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	
	@Resource(name="bookService")
	private BookService bookService;
	
	//添加到收藏夾
	@RequestMapping("/addCollect/{id}")
	public String addCollect(@PathVariable int id) {
		Book book = bookService.selectBookById(id);
		Collect collect = new Collect();
		collect.setName(book.getName());
		collect.setAuthor(book.getAuthor());
		collect.setPrice(book.getPrice());
		collect.setImage(book.getImage());
		collect.setUserid(1);
		collectService.insertCollect(collect);
		return "redirect:/listCollect";
	}
	
	//展示收藏夹
	@RequestMapping("/listCollect")
	public String listCollect(Model m) {
		List<Collect> list = collectService.selectAllCollect();
		m.addAttribute("collect",list);
		return "collectList";
		
	}
	
	//删除收藏夹
	@RequestMapping("/deleteCollect/{id}")
	public String deleteCollect(@PathVariable int id) {
		collectService.deleteCollect(id);
		return "redirect:/listCollect";
	}
	
}
