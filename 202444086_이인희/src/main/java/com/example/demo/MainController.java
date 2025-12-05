package com.example.demo;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.information.Information;
import com.example.demo.information.InformationService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class MainController {
	private final InformationService iService;
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}
	
	@RequestMapping("/viewList")
	public String viewList(Model model) {
		List<Information> informations = iService.selectAll();
		
		if (informations == null) {
			return "information/insertForm";
		}
		
		model.addAttribute("information", informations);
		
		return "viewList";
	}
}
