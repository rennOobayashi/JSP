package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	@RequestMapping("/")
	@ResponseBody
	public String root() {
		return "Model and View";
	}
	
	@RequestMapping("/model")
	public String modelMethod(Model model) {
		model.addAttribute("name", "Lee Inhee");
		model.addAttribute("age", "20");
		
		return "model";
	}
	
	@GetMapping("/mv")
	public ModelAndView mvMethod() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", "Lee Inhee");
		mv.addObject("age", "20");
		
		List<String> ls = new ArrayList<>();
		ls.add("test1");
		ls.add("test2");
		ls.add("test3");
		
		mv.addObject("lists", ls);
		
		mv.setViewName("mvVIew");
		
		return mv;
	}
	
}
