package com.example.demo.information;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Information information) {
		Information info = iService.select(id);
		
		info.setTitle(information.getTitle());
		info.setSubTitles(information.getSubTitles());
		iService.insert(info);
		
		return "redirect:/viewList";
	}
	
	@RequestMapping("/updateForm/{id}") 
	public String UpdateForm(@PathVariable("id") int id, Model model) {
		Information information = iService.select(id);
		model.addAttribute("information", information);
		
		return "updateForm";
	}
	
	@RequestMapping("/details/{id}/{subTitle}")
	public String Details(@PathVariable("id") int id, @PathVariable("subTitle") String subTitle, Model model) {
		Information information = iService.select(id);
		model.addAttribute("information", information);
		model.addAttribute("subTitle", subTitle);
		
		return "detail";
	}
}
