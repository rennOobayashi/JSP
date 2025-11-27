package com.example.demo.question;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import lombok.RequiredArgsConstructor;

@RequestMapping("/question") //question/...만 이 controller에서 처리
@RequiredArgsConstructor //생성자의 매개변수로 필요한 객체 자동 생성
@Controller
public class QuestController {
	private final QuestionService qService;

	@GetMapping("/index")
	public String index() {
		return "index";
	}
	@GetMapping("/insertForm")
	public String insertForm() {
		return "insertForm";
	}
	@GetMapping("/insert")
	public String insert(Question question) {
		question.setCreateDate(new Date());
		qService.insert(question);
		return "redirect:/question/viewList";
	}
	
	@GetMapping("/viewList")
	public String viewList(Model model) {
		List<Question> ls = qService.SelectAll();
		
		if (ls == null) {
			return "insertForm";
		}
		model.addAttribute("list", ls);
		
		return "viewList";
	}
	
	@GetMapping("detail/{id}")
	public String detail(@PathVariable("id") int id, Model model) {
		Question question = qService.Select(id);
		model.addAttribute("question", question);
		return "detail";
	}
	
	@GetMapping("updateForm/{id}")
	public String updateForm(@PathVariable("id") int id, Model model) {
		Question question = qService.Select(id);
		model.addAttribute("question", question);
		return "updateForm";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Question question) {
		Question q = qService.Select(id);
		
		q.setSubject(question.getSubject());
		q.setContent(question.getContent());
		qService.insert(q);
		return "redirect:/qusetion/viewList";
	}
	
	@GetMapping("/deleteForm/{id}")
	public String deleteForm(@PathVariable("id") int id, Model model) {
		model.addAttribute("id", id);
		return "deleteForm";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		qService.delete(id);
		return "redirect:/viewList";
	}
}
