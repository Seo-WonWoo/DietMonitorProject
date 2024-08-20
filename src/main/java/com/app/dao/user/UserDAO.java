package com.app.dao.user;

import java.util.List; 
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.app.dto.user.NutritionStandard;
import com.app.dto.user.User;

public interface UserDAO {

	
	public User findUserByEmail(String email);
	
	public int modifyUser(User user);
	
	public int saveUser(User user);	
	
	public User findLoginUser(User user);

	public int getMonthsByMemberInfo(int accountNo, int memberNo);

	public String getGenderNameByGenderId(int genderId);

	public User findUserByMemberInfo(int accountNo, int memberNo);

	public List<NutritionStandard> getNutritionStandardByMemberInfo(Map<String, String> memberInfo);

	public int addProfile(User user);

	public List<User> findUserListByAccountNo(int accountNo);

	public int removeProfile(int accountNo, int memberNo);

	public List<User> findMemberList(User user);

	public int getMemberCountByAccountNo(int accountNo);
	
}
