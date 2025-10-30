package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "Hello World~!";
	}
	
	@RequestMapping("/hello")
	@ResponseBody
	public String hello() {
		return "<h2> Dept : Software<br>"
				+ "Student Number : 202444086<br>"
				+ "Name : Inhee Lee<br></h2>";
	}
}
