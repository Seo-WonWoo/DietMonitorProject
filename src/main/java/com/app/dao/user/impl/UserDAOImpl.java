package com.app.dao.user.impl;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.user.UserDAO;
import com.app.dto.user.User;

@Repository
public class UserDAOImpl implements UserDAO {

	//DB User 처리
	@Autowired				
	SqlSessionTemplate sqlSessionTemplate;	
	
	
	@Override
	public List<User> findUserList() {
		// TODO Auto-generated method stub
		List<User> userList = sqlSessionTemplate.selectList("user_mapper.findUserList");		
		return userList;
	}
	
	public List<User> findUserListByUserType(String userType){
		
		List<User> userList = sqlSessionTemplate.selectList("user_mapper.findUserListByUserType", userType);
		
		return userList;
	}

	@Override
	public User findUserByEmail(String email) {
		// TODO Auto-generated method stub
		User user = sqlSessionTemplate.selectOne("user_mapper.findUserByEmail", email);
		
		return user;
	}

	@Override
	public int modifyUser(User user) {
		
		int result = sqlSessionTemplate.update("user_mapper.modifyUser", user);
		
		return result;
	}

	@Override
	public int saveUser(User user) {

		int result = sqlSessionTemplate.insert("user_mapper.saveUser", user);
		
		return result;
	}

	@Override
	public User findLoginUser(User user) {
		// TODO Auto-generated method stub
		User loginUser = sqlSessionTemplate.selectOne("user_mapper.findLoginUser", user);
		
		return loginUser;
	}
			
	
}
