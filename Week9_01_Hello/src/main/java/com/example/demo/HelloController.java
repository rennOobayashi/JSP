package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller //클라이언트 요청 처리
public class HelloController {
	@Autowired //IOC
	private Hello hello;
	
	//Get Request
	@RequestMapping("/") //Root's Request. Ex) http://localhost:8080"/"
	@ResponseBody		 //Push Response on HTML Body 
	public String root() {
		return hello.sayHello();
	}
}
