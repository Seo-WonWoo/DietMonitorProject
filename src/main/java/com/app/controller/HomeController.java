package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.app.dto.user.User;
import com.app.service.user.UserService;
import com.app.util.SessionManager;

@Controller
public class HomeController {
	
	@Autowired
	UserService userService;

	@GetMapping("/")
	public String root() {
		return "redirect:/main";
	}
	
	@GetMapping("/main")
	public String main(HttpSession session, Model model) {
		
		return "index";
	}
	
	
}
