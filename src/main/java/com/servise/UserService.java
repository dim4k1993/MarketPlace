package com.servise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.repository.UserRepository;

import java.util.HashMap;
import java.util.Map;


@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public void userRegistration(String name,String lastName,String email,String parol,String telephon_namber){
		User user = new User();
		user.setName(name);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setParol(parol);
		user.setTelephon_namber(telephon_namber);
		userRepository.save(user);
	}



		public Iterable<User> getAll(){
		return userRepository.findAll();
	}

	public void daleteUser(String id){
		userRepository.delete(Integer.parseInt(id));
	}
}
