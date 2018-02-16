package com.bdl.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdl.entity.User;
import com.bdl.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;
	
	public void saveUser(User user) {
		userRepository.save(user);
	}

	public User checkLogin(String email, String password) {
		return userRepository.checkLogin(email,password);
	}
}
