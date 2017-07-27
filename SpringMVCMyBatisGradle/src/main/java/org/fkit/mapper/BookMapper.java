package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Book;

/**
 * BookMapper接口
 * */
public interface BookMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
	//展示商品
	@Select(" select * from tb_book ")
	List<Book> findAll();

	//通过ID去查找Book
	@Select("select * from tb_book where id =#{id}")
	Book selectBookById(@Param("id") int id);
	
	//添加商品
	@Insert("insert into tb_book(name,author,count,image,remark,category,price) values(#{name},#{author},#{count},#{image},#{remark},#{category},#{price}) ")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertBook(Book book);
}
