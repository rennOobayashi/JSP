package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/komala")
	public String komala(Model model) {
		model.addAttribute("name", "자말라");
		return "komala";
	}

	@RequestMapping("/Baxcalibur")
	public String Baxcalibur(Model model) {
		model.addAttribute("name", "드닐레이브");
		return "Baxcalibur";
	}

	@RequestMapping("/Pachiris")
	public String Pachiris(Model model) {
		model.addAttribute("name", "파치리스");
		return "Pachiris";
	}
}
