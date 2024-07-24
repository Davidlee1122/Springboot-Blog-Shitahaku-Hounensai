package com.cos.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cos.blog.model.User;

// DAO
// 자동으로 bean등록이 된다.
//@Repository// 생략가능
public interface UserRepository extends JpaRepository<User, Integer>{
	
}

	//JPT Naming 전략 <전통적인 방식의 login>
	// SELECT * FROM user WHERE username =? And password = ?2;
	//User findByUsernameAndPassword(String username, String password);
	/*
	 * @Query(value = "SELECT * FROM user WHERE username =?1 And password = ?2",
	 * nativeQuery = true) User login(String username, String password);
	 */