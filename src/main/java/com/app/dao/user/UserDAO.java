package com.app.dao.user;

import java.util.List; 

import com.app.dto.user.User;

public interface UserDAO {

	public List<User> findUserList();
	
	public List<User> findUserListByUserType(String userType);
	
	public User findUserByEmail(String email);
	
	public int modifyUser(User user);
	
	public int saveUser(User user);	
	
	public User findLoginUser(User user);
	

}
