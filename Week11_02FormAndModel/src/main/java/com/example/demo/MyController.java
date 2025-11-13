package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String result(@RequestParam("name") String name,@RequestParam("id") String id, @RequestParam("pw") String password,  Model model) {
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		model.addAttribute("pw", password);
		
		return "result";
	}
}
