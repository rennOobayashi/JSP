package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "JSP in Springboot\r\n";
	}
	
	// /test1 Response
	@RequestMapping("/test1")
	public String test1() {
		//prefix : /WEB-INF/views/
		//suffix: .jsp
		return "test1";
	}
	
	@RequestMapping("/test2")
	public String test2() {
		return "test2";
	}
	
	@RequestMapping("/test3")
	public String test3() {
		return "sub/test3";
	}
}
