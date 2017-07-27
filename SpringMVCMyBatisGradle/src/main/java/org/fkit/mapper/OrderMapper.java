package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Order;

public interface OrderMapper {
	@Insert("insert into tb_order(name,count,price,image,userid) values(#{name},#{count},#{price},#{image},#{userid})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertOrder(Order order);
	
	@Select("select * from tb_order")
	List<Order> selectAllOrder();
}
