package com.example.demo.inforDetails;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.information.Information;
import com.example.demo.information.InformationService;

import lombok.RequiredArgsConstructor;

@RequestMapping("/infoDetails")
@RequiredArgsConstructor
@Controller
public class InfoDetailsController {
	private final InformationService iService;
	private final InfoDetailsService dService;
	
	@GetMapping("/insert/{id}/{subTitle}")
	public String insert(@PathVariable("id") int id, @PathVariable("subTitle") String subTitle, @RequestParam("content") String content) {
		Information inforation = iService.select(id);
		dService.insert(inforation, subTitle, content);
		
		return String.format("redirect:/information/details/%s/%s", id, subTitle);
	}
}
