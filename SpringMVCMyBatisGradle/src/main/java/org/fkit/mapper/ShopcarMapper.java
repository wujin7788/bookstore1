package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Shopcar;

public interface ShopcarMapper {
	//添加到购物车
	@Insert("insert into tb_shopcar(userid,name,count,price,image) values(#{userid},#{name},#{count},#{price},#{image})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertShopcar(Shopcar shopcar);
	
	//删除购物车
	@Delete("delete from tb_shopcar where id =#{id}")
	void deleteShopcar(@Param("id") int id);
	
	//展示购物车
	@Select("select * from tb_shopcar")
	List<Shopcar> selectAll();
	
	//更新购物车
	@Update("update tb_shopcar set count = #{count} where id =#{id}")
	void updateShopcar(@Param("count") int count,@Param("id") int id);
	
	@Select("select * from tb_shopcar where id=#{id}")
	Shopcar selectShopcarById(@Param("id") int id);
	
}
