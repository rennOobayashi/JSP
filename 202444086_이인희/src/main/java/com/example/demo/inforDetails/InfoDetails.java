package com.example.demo.inforDetails;

import com.example.demo.information.Information;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Data;

@Entity
@Data
public class InfoDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(columnDefinition = "TEXT")
	private String subTitle;

	@Column(columnDefinition = "TEXT")
	private String content;

	@OneToOne
	private Information information;
}
