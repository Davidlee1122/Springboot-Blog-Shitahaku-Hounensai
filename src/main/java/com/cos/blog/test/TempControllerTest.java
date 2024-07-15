package com.cos.blog.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TempControllerTest {

	//http://localhost:8000/blog/temp/home
	@GetMapping("/temp/home")
	public String tempHome() {
		System.out.println("tempHome()");
		//파일리턴 기본경로: src/main/resources/static
		//리턴명을 /home.html로 해줘야
		//풀 경로가 src/main/resources/static/home.html
		return "/home.html";
	}
	
	@GetMapping("/temp/jpg")
	public String tempImg() {
	return "/a.jpg";
	}
	//static의 밑에는 정적인 파일만 넣을 수 있다.
	//jsp는 동적인 파일이기에 static 밑에 넣어도 못 찾음
	
	@GetMapping("/temp/jsp")
	public String tempJsp() {
		// prefix : /WEB-INF/views/
		// suffix : .jsp
		//앞 뒤로 위가 붙어
		//풀네임 : /WEB-INF/views/test.jsp
	return "test";//test앞의 '/' 정도는 스프링이 해줌
	}
}
