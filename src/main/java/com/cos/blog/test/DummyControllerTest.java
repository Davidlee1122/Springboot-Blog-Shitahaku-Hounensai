package com.cos.blog.test;

import java.util.List;
import java.util.function.Supplier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cos.blog.model.RoleType;
import com.cos.blog.model.User;
import com.cos.blog.repository.UserRepository;

@RestController //html이 아니라 data를 전달해주는 controller => RestController
public class DummyControllerTest {

	@Autowired // 의존성 주입(DI)
	private UserRepository userRepository;
	
	//http://localhost:8000/blog/dummy/user
	@GetMapping("/dummy/users")
	public List<User> list(){
		return userRepository.findAll();
	}
	
	//한 페이지당 2건의 데이터를 리턴받을 것임
	@GetMapping("/dummy/user")
	public List<User> pageList(@PageableDefault(size=2, sort="id", direction = Sort.Direction.DESC) Pageable pageable){
		Page<User> pagingUser = userRepository.findAll(pageable);//이렇게 하면 밑에 다른 정보들 말고 content만 가져옴
		//List<User> users = userRepository.findAll(pageable).getContent();//이렇게 하면 밑에 다른 정보들 말고 content만 가져옴
		List<User> users = pagingUser.getContent();
		return users;
	}
	
	//{id} 주소로 파라미터를 전달받을 수 있음/
	//http://localhost:8000/blog/dummy/user/3
	//람다식으로 User user = userRepository.findById(id).orElseThrow(()->{})작성하면 
	//귀찮은 IllegalArgumentException같은 거 다 생략해도 알아서 넣어줌
	@GetMapping("/dummy/user/{id}")
	public User detail(@PathVariable int id) {
		// user/4를 찾는데 내가 데이터베이스에서 못 찾아오면 user가 null이 되자나.
		// 그럼 return null이 리턴이 되자나... 그럼 프로그램에 문제가 있지 않겠니?
		// Optional로 너의 User 객체를 감싸서 가져올테니 null인지 아닌지 판단해서 return 해!!
		User user = userRepository.findById(id).orElseThrow(new Supplier<IllegalArgumentException>() {
			//여기를 Throw가 아니라 get으로 잡으면 오류 메시지 대신 null이나 0값으로 출력
			@Override
			public IllegalArgumentException get() {
				// TODO Auto-generated method stub
				return new IllegalArgumentException("해당 유저는 없습니다. id : "+id);
			}
		});
		//요청 : 웹 브라우저
		//user 객체 = 자바 오브젝트
		//변환 (웹브라우저가 이해할 수 있는 데이터로 -> json)
		//스프링부트 = MessageConverter라는 애가 응답시에 자동 작동
		//만약에 자바 오브젝트를 리턴하게 되면 MessageConverter가 Jackoson 라이브러리를 호출해서
		//user 오브젝트를 json으로 변환해서 브라우저에게 던져줍니다.
		return user;
	}
	
	//http://localhost:8000/blog/dummy/join(요청시)
	//http의 body에 username, password, email 데이터를 가지고 (요청)
	@PostMapping("/dummy/join")
	public String join(User user) {// key=value의 형태로 값을 받음(약속된 규칙임)
		System.out.println("id : "+user.getId());
		System.out.println("username : "+user.getUsername());
		System.out.println("password : "+user.getPassword());
		System.out.println("email : "+user.getEmail());
		System.out.println("role : "+user.getRole());
		System.out.println("createDate : "+user.getCreateDate());
		
		user.setRole(RoleType.USER);
		userRepository.save(user);
		return "회원가입이 완료되었습니다.";
	}
}
