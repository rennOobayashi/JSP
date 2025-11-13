package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	
	@GetMapping("/result")
	public String result(MemberInfo memberInfo) {		
		return "result";
	}
	
	@GetMapping("/logout")
	public String logout(MemberInfo memberInfo) {
		return "logout";
	}
}
