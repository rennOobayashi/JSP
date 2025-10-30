package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {
	private int index = -1;
	private String str = "";
	
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		if (index < 1) {
		str += "안녕하세요, 이인희입니다.<br>";
		}
		else {
			str = "안녕하세요, 이인희입니다.<br>";
		}
		
		index = 1;
		
		return str;
	}
	
	@RequestMapping("/intro")
	@ResponseBody
	public String intro() {
		if (index < 2) {
		str += "나는 21살이고, MBTI는 모릅니다.<br>";
		}
		else {
			str = "나는 21살이고, MBTI는 모릅니다.<br>";
		}
		
		index = 2;
		
		return str;
	}
	
	@RequestMapping("/sports")
	@ResponseBody
	public String sports() {
		if (index < 3) {
		str += "좋아하는 운동은 달리기랑 농구입니다.<br>";
		}
		else {
			str = "좋아하는 운동은 달리기랑 농구입니다.<br>";
		}
		
		index = 3;
		
		return str;
	}
}
