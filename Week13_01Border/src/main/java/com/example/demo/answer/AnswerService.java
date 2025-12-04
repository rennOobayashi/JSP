package com.example.demo.answer;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.example.demo.question.Question;

import lombok.RequiredArgsConstructor;

//construct object need
@RequiredArgsConstructor
@Service
public class AnswerService  {
	private final AnswerRepository aRepository;
	
	public void insert(Question question, String content) {
		Answer answer = new Answer();
		answer.setContent(content);
		answer.setCreateDate(new Date());
		answer.setQuestion(question);
		aRepository.save(answer);
	}
}
