package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Collect;

public interface CollectMapper {
	@Insert("insert into tb_collect(userid,name,author,price,image) values(#{userid},#{name},#{author},#{price},#{image})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertCollect(Collect collect);
	
	//展示收藏夹
	@Select("select * from tb_collect")
	List<Collect> selectAllCollect();
	
	//删除收藏夹
	@Delete("delete from tb_collect where id =#{id}")
	void deleteCollect(@Param("id") int id);
}
