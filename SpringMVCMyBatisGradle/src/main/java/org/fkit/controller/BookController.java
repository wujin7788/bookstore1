package org.fkit.controller;

import java.util.List;

import org.fkit.domain.Book;
import org.fkit.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class BookController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/listBook")
	 public String main(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("list", book_list);
		// 跳转到listbooks页面
		return "listBooks";
	}
	
	//添加商品
	@RequestMapping("/addBooks")
	public String addBook(String name,String author,float price,int count,String remark,String image) {
		System.out.print(name);
		System.out.print(price);
		Book book = new Book();
		book.setName(name);
		book.setAuthor(author);
		book.setCount(count);
		book.setPrice(price);
	
		bookService.insertBook(book);
		
		return "redirect:/listBooks";
	}
	
	
}
