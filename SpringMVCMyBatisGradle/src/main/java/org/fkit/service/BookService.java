package org.fkit.service;

import java.util.List;

import org.fkit.domain.Book;

/**
 * Book服务层接口
 * */
public interface BookService {
	
	/**
	 * 查找所有图书
	 * @return Book对象集合
	 * */
	List<Book> getAll();
	
	//添加商品
	void insertBook(Book book);
	
	Book selectBookById(int id);
	
}
