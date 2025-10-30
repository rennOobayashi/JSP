package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Week901HelloApplication {

	public static void main(String[] args) {
		SpringApplication.run(Week901HelloApplication.class, args);
		System.out.println("Hello SpringBoot! in System.out.println");
	}

}
