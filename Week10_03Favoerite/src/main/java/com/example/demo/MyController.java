package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/")
	public String root() {
		return "index";
	}

	@RequestMapping("/music")
	public String music() {
		return "music";
	}

	@RequestMapping("/movie")
	public String movie() {
		return "movie";
	}

	@RequestMapping("/sport")
	public String sport() {
		return "sport";
	}
}
