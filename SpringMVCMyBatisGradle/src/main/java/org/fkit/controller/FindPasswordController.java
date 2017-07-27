package org.fkit.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FindPasswordController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	@RequestMapping(value="/find",method = RequestMethod.POST)
	public ModelAndView find(
		String loginname,String email,
		ModelAndView mv,HttpSession session,HttpServletRequest request,HttpServletResponse response
		)throws Exception{	
			
	    User user=userService.findPassword(loginname,email);

		if(user!=null){
			
			StringBuffer url = new StringBuffer();
			StringBuilder builder = new StringBuilder();
			// 正文
			builder.append(
					"<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /></head><body>");
			url.append("<font color='red'>" + user.getPassword() + "</font>");
			builder.append("<br/><br/>");
			builder.append("<div>" + url + "</div>");
			builder.append("</body></html>");
			SimpleEmail sendemail = new SimpleEmail();
			sendemail.setHostName("smtp.163.com");



// 指定要使用的邮件服务器
			sendemail.setAuthentication("15162172256@163.com", "wujin123");// 使用163的邮件服务器需提供在163已注册的用户名、密码
			sendemail.setCharset("UTF-8");
			try {
				sendemail.setCharset("UTF-8");
				sendemail.addTo(email);
				sendemail.setFrom("15162172256@163.com");
				sendemail.setSubject("找回密码");
				sendemail.setMsg(builder.toString());
				sendemail.send();
				System.out.println(builder.toString());
			} catch (EmailException e) {
				e.printStackTrace();
			}
			response.getWriter().println("你的密码为已成功发送到邮箱");	
//			mv.addObject("message", "密码已发到你的邮箱");
			
			mv.setViewName("loginForm");
		}else{
			response.getWriter().println("获取密码失败");

//			mv.addObject("message", "用户名或邮箱错误！！");
			mv.setViewName("pwdReback");
			
		
		}
	    return mv;
	}

	
	
}
