package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MyController {	
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "안녕하세요, 이인희입니다.";
	}
	
	@RequestMapping("/intro")
	@ResponseBody
	public String intro() {
		return "나는 21살이고, MBTI는 모릅니다.";
	}
	
	@RequestMapping("/sports")
	@ResponseBody
	public String sports() {
		return "좋아하는 운동은 달리기랑 농구입니다.";
	}
}
