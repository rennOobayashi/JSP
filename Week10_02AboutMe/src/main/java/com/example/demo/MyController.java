package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String main() {
		return "Hello world!";
	}
	
	@RequestMapping("/name")
	public String name() {
		return "name";
	}
	
	@RequestMapping("/address")
	public String address() {
		return "address";
	}
	
	@RequestMapping("/major")
	public String major() {
		return "major";
	}
}
