package com.app.service.user.impl;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.user.UserDAO;
import com.app.dto.user.User;
import com.app.service.user.UserService;


// @Component
@Service	// 서비스 Bean 등록
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO userDAO;

	@Override
	public List<User> findUserList() {
		// TODO Auto-generated method stub
		List<User> userList = userDAO.findUserList();
		
		return userList;
	}

	@Override
	public User findUserByEmail(String email) {
		// TODO Auto-generated method stub
		User user = userDAO.findUserByEmail(email);
		
		return user;
	}

	@Override
	public int modifyUser(User user) {
		int result = userDAO.modifyUser(user);
		
		return result;
	}

	@Override
	public int saveUser(User user) {
		
		int result = userDAO.saveUser(user);
		
		return result;
	}

	@Override
	public boolean isDuplicatedEmail(String email) {
		
		User user = userDAO.findUserByEmail(email);
		
		if(user == null) {	//중복X 사용가능
			return false;
		} else { //존재O 중복O 
			return true;
		}
	}

	@Override
	public User isValidCustomerLogin(User user) {
		
		User loginUser = userDAO.findLoginUser(user);
			
		return loginUser;
	}

}
