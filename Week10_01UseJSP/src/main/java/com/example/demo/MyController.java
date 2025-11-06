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
		
		return "/WEB-INF/views/test1.jsp";
	}
	
	@RequestMapping("/test2")
	public String test2() {
		return "/WEB-INF/views/test2.jsp";
	}
	
	@RequestMapping("/test3")
	public String test3() {
		return "/WEB-INF/views/sub/test3.jsp";
	}
}
