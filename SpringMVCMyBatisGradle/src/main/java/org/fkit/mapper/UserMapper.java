package org.fkit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.User;

/**
 * UserMapper接口
 * */
public interface UserMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	//登陸
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);
	
	//注冊
	@Insert("insert into tb_user(loginname,password,email) values(#{loginname},#{password},#{email})")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void insertUser(User user);
	
	//找回密码
	@Select("select * from tb_user where loginname=#{loginname} and email = #{email}")
	User findPassword(@Param("loginname") String loginname, @Param("email") String email);
	
	//修改密码
	@Update("update tb_user set password =#{password} where id=#{id} ")
	void updatePassword(@Param("password") String password, @Param("id") int id);
	
}

