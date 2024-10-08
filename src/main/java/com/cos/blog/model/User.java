package com.cos.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//ORM -> Java(다른언어) Object -> 테이블로 매핑해주는 기술
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder // 빌더 패턴
@Entity //User 클래스가 자동으로 MySQL에 생성이 된다.
//@DynamicInsert // insert시에 null인 필드를 제외시켜준다.
public class User {
  
	@Id // primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) // 해당 프로젝트에서 연결된 DB의 넘버링 전략을 따라간다.
	private int id;// 시퀀스, auto_increment
	
	@Column(nullable = false, length = 30, unique = true)// 해쉬 사용해서 비밀번호 암호화할 것
	private String username; //아이디
	
	@Column(nullable = false, length = 100)
	private String password;// 비밀번호
	
	@Column(nullable = false, length = 50)
	private String email;
	
	//@ColumnDefault("'user'").
	//DB는 RoleType이라는 게 없다.
	@Enumerated(EnumType.STRING)
	private RoleType role; // 정확하려면 Enum을 쓰는 게 좋다 // admin, user, manager 등등의 권한 가능
	
	@CreationTimestamp // 시간 자동 입력
	private Timestamp createDate;
}