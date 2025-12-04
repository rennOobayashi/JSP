package com.example.demo.information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RequestMapping("/information")
@Controller
public class InformationController {
	private final InformationService iService;
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/insert")
	public String insert(Information info) {
		iService.insert(info);
		
		return "redirect:/viewList";
	}
	
	@RequestMapping("/insertForm")
	public String insertForm() {
		return "insertForm";
	}
}
