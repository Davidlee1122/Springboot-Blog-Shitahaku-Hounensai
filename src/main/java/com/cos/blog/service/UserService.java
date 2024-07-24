package com.cos.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.User;
import com.cos.blog.repository.UserRepository;


//스프링이 컴포넌트 스캔을 통해서 Bean에 등록을 해줌, IoC를 해준다.
@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	//select를 할 때에도 Transactional을 붙인다 -> 왜? 정합성을 유지하기 위해서
	public void 会員登録(User user) {
		userRepository.save(user);
	}
	
	@Transactional(readOnly = true) //select할 때 트랜젝션 시작, 서비스 종료시에 트랜젝션 종료 (정합성 유지 가능)
	public User ログイン(User user) {
		return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
	}
}
