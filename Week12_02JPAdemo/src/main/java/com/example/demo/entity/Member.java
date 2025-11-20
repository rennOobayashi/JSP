package com.example.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity //DB Table
public class Member {
	@Id
	//Primary Key
	private String id;
	
	@Column(length = 20)
	private String name;

	@Column(length = 200)
	private String address;
}
