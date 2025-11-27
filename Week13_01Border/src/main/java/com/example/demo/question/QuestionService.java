package com.example.demo.question;


import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class QuestionService {
	private final QuestRepository qRepository;

	public void insert(Question question) {
		qRepository.save(question);
	}
	
	//processing all data to list
	public List<Question> SelectAll() {
		List<Question> ls = qRepository.findAll();
		return ls;
	}
	
	//read data
	public Question Select(int id) {
		Optional<Question> question = qRepository.findById(id);
		
		if (question.isPresent()) {
			return question.get();
		}
		else {
			return null;
		}
	}
	
	public void delete(int id) {
		qRepository.deleteById(id);
	}
}
