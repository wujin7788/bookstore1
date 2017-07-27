package org.fkit.controller;

import org.fkit.domain.Manager;
import org.fkit.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping("/managerLogin")
	public String managerLogin( Manager manager,Model model) {
		Manager m = managerService.selectManager(manager);
		if(m!=null) {
			return "header";
			
		}
		model.addAttribute("message", "登录名或密码错误，请重新登录！！");
		return "managerLoginForm";
	}
}
