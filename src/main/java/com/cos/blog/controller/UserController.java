package com.cos.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

//인증이 안된 사용자들이 출입할 수 있는 경로를 /auth/** 허용
//그냥 주소가 /이면 index.jsp 허용
//static 이하에 있는 /js/**, /css/**, /img/**

@Controller
public class UserController {

	@GetMapping("/auth/joinForm")
	public String joinForm() {		
		return "user/joinForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {		
		return "user/loginForm";
	}
	
	@GetMapping("/user/updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	
	@GetMapping("/auth/aboutForm")
	public String aboutForm() {
		return "/auth/aboutForm";
	}

	@GetMapping("/auth/relatedarticles")
	public String relatedarticles() {
		return "/auth/relatedarticles";
	}

	@GetMapping("/auth/access")
	public String access() {
		return "/auth/access";
	}
}
