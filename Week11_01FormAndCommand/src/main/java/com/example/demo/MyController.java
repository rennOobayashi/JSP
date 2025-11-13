package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "Get the form data to use";
	}
	
	//Only Get Method, not Host
	@GetMapping("/test")
	public String test(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		//Provide parameters  to the view page 
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		return "test"; //View page name
	}
	
	//Direct processing
	@GetMapping("/test2") 
	public String test2(@RequestParam("id") String id, @RequestParam("name") String name,
						Model model) {
		//Security, complex parameter issue
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		
		return "test2";
	}
	
	//Push Parameter in the URL
	@GetMapping("/test3/{id}/{name}")
	public String test3(@PathVariable("id") String id, @PathVariable("name") String name, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		
		return "test3";
	}
	
}
