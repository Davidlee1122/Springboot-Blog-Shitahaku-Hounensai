package com.cos.blog.test;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member {
	private int id;
	private String username;
	private String password;
	private String email;
	
	@Builder
	//builder를 쓰지 않는 경우 일일이 오버로딩을 해서 맞는 member를 만들어줘야함.
	//또한 순서를 맞추지 않아도 그 이름 그대로에 매칭을 시키기 때문에 훨씬 더 편리함.
	public Member(int id, String username, String password, String email) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.email = email;
	}
	
	
}

