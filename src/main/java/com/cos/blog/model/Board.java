package com.cos.blog.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;  
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Board {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)//auto_increment
	private int id;
	
	@Column(nullable = false, length = 100)
	private String title;
	
	@Lob//대용량 데이터 일 때 사용
	private String content;//내용 엄청나게 길어질 수 있어
	//섬머노트 라이브러리 사용할 건데 <html>태그가 섞여서 디자인 -> 글자 용량 커지게 됨
	
	@ColumnDefault("0")
	private int count;//조회수
	 
	@ManyToOne//Many = Board, User = one 한 명의 유저는 여러 개의 게시글을 쓸 수 있다.
	@JoinColumn(name="userId")
	private User user; //DB는 오브젝트를 저장할 수 없다. FK, 자바는 오브젝트 저장할 수 있다.
	
	@CreationTimestamp // 데이터 만들고 수정시 시간 들어감
	private Timestamp createDate;
}
