package com.app.service.user;

import java.util.List;

import com.app.dto.user.User;

public interface UserService {

	public List<User> findUserList();
	
	public User findUserByEmail(String email);
	
	public int modifyUser(User user);
	
	public int saveUser(User user);
	
	public boolean isDuplicatedEmail(String email);
	
	public User isValidCustomerLogin(User user);
	
	//public User findLoginUser(User user);
	
}
