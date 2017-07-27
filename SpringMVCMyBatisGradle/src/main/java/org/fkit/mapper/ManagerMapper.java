package org.fkit.mapper;

import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Manager;

public interface ManagerMapper {
	@Select("select * from tb_manager where loginname =#{loginname} and password=#{password}")
	Manager selectManager(Manager manager);
	
}
