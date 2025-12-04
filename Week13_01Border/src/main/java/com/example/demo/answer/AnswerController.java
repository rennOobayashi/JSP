package com.example.demo.answer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.question.Question;
import com.example.demo.question.QuestionService;

import lombok.RequiredArgsConstructor;

@RequestMapping("/answer")
@RequiredArgsConstructor
@Controller
public class AnswerController {
	private final AnswerService aService;
	private final QuestionService qService;
	
	@RequestMapping("/insert/{id}")
	public String insert(@PathVariable("id") int id, @RequestParam("content") String content) {
		//Get question
		Question question = qService.Select(id);
		
		//Regist Answer
		aService.insert(question, content);
		return String.format("redirect:/question/detail/%s", id);
	}
}
