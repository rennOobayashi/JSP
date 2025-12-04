package com.example.demo.answer;

import java.util.Date;

import com.example.demo.question.Question;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class Answer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column (columnDefinition = "TEXT")
	private String content;
	
	private Date createDate;
	
	//About Answer
	//One Question -> Many Answer
	@ManyToOne
	private Question question;
}
