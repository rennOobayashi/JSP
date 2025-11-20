package com.example.demo;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Entity.Question;
import com.example.demo.dao.QuestionRepository;

@Controller
public class QuestionController {
	QuestionRepository questionRepository;
	
	public QuestionController(QuestionRepository questionRepository) {
		this.questionRepository = questionRepository;
	}
	
	@GetMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/insert")
	public void insert() {
		Question question = new Question();
		question.setSubject("What is JPA?");
		question.setContent("How to use Database in SpringBoot.");
		question.setCreateDate(LocalDateTime.now());
		
		questionRepository.save(question);
		
		//1 record = 1 question object
		Question question2 = new Question();
		question2.setSubject("Persona 5 the Royal Nintendo switch 2");
		question2.setContent("I WANT PERSONA 5 THE ROYAL SWITCH 2 EDITION");
		question2.setCreateDate(LocalDateTime.now());
		
		questionRepository.save(question2);
	}
	
	@GetMapping("/display")
	@ResponseBody
	public List<Question> display() {
		List<Question> questions = questionRepository.findAll();
		
		return questions;
	}
	
	@GetMapping("/insertForm")
	public String insertForm() {
		return "insertForm";
	}
	
	@GetMapping("/list")
	public String viewList(Model model) {
		List<Question> questions = questionRepository.findAll();
		model.addAttribute("questions", questions);
				
		return "viewList";
	}
	
	@GetMapping("/insertResult")
	public String insertResult(Question question) {
		question.setCreateDate(LocalDateTime.now());
		questionRepository.save(question);
		
		return "redirect:/list";
	}
}
