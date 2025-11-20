package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dao.MemberRepository;
import com.example.demo.entity.Member;

@Controller
public class MemberController {

    private final Week1202JpAdemoApplication week1202JpAdemoApplication;
	//Use Repository for DB connect
	private MemberRepository memberRepository;
	
	public MemberController(MemberRepository memberRepository, Week1202JpAdemoApplication week1202JpAdemoApplication) {
		this.memberRepository = memberRepository;
		this.week1202JpAdemoApplication = week1202JpAdemoApplication;
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
