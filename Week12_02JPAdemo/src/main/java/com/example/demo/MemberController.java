package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dao.MemberRepository;
import com.example.demo.entity.Member;

@Controller
public class MemberController {

	//Use Repository for DB connect
	private MemberRepository memberRepository;
	
	public MemberController(MemberRepository memberRepository) {
		this.memberRepository = memberRepository;
	}
	
	@GetMapping("/insert")
	public void insert() {
		//테이블 1개 레코드 모양 -> Member
		Member member = new Member();
		member.setId("admin");
		member.setName("홍길동");
		member.setAddress("인천시 미추홀구");
		
		memberRepository.save(member);
	}
}
