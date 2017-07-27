package org.fkit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Book;
import org.fkit.domain.User;
import org.fkit.service.BookService;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Autowired
	@Resource(name="bookService")
	private BookService bookService;
	/**
	 * 处理/login请求
	 * */
	@RequestMapping(value="/login")
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		User user = userService.login(loginname, password);
		if(user != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到products请求
			mv.setView(new RedirectView("showProduct"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	@RequestMapping("/regist")
	public String register(User user,Model m) {
		
		userService.insertUser(user);
		m.addAttribute("message", "注冊成功");
		return "loginForm";
	}
	
	
	//修改密码
	@RequestMapping("/updatePassword")
	public String updatePassword(String password,int id,Model m) {
		userService.updatePassword(password, id);
		m.addAttribute("message","修改密码成功，请重新登录！！");
		return "loginForm";
	}
	
	
	
	
	//展示商品
	@RequestMapping("/showProduct")
	public String showProduct(Model model) {
		List<Book> list =bookService.getAll();
		model.addAttribute("listproduct", list);
		return "products";
	}
}
