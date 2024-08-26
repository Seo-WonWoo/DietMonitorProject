package com.app.service.user;

import java.util.List; 
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.app.dto.user.NutritionStandard;
import com.app.dto.user.User;

public interface UserService {
	
	/**
	 * 회원정보 수정
	 * @param User(회원정보)
	 * @return int(회원정보 수정한 갯수)
	 */
	public int modifyUser(User user);
	
	/**
	 * 회원정보 저장(추가)
	 * @param User(회원정보)
	 * @return int(회원정보 저장한 갯수)
	 */	
	public int saveUser(User user);
	
	/**
	 * 이메일 중복확인 검사
	 * @param String(이메일)
	 * @return boolean(이메일 중복 여부, false 중복X, true 중복O)  
	 */
	public boolean isDuplicatedEmail(String email);
	
	/**
	 * 입력정보로 회원 호출(로그인 시도)
	 * @param User(이메일, 비밀번호)
	 * @return User(회원)
	 */
	public User isValidCustomerLogin(User user);
	
	/**
	 * 회원정보(회원번호, 멤버정보)에 해당하는 생후 개월수 호출
	 * @param int(accountNo)
	 * @param int(memberNo)
	 * @return int(생후 개월수)
	 */
	public int getMonthsByMemberInfo(int accountNo, int memberNo);

	/**
	 * 성별아이디에 해당하는 성별이름 호출
	 * @param int(genderId)
	 * @return int(성별이름)
	 */
	public String getGenderNameByGenderId(int genderId);

	/**
	 * 입력정보로 회원 호출(로그 회원 검색)
	 * @param int(accountNo)
	 * @param int(memberNo)
	 * @return User(회원)
	 */
	public User findUserByMemberInfo(int accountNo, int memberNo);
	
	/**
	 * 세션정보(로그회원)애 해당하는 영양소별 섭취기준 리스트 호출
	 * @param session(accountNo, memberNo)
	 * @return List<NutritionStandard>(영양소별 섭취기준 리스트)
	 */
	public List<NutritionStandard> getNutritionStandardByMemberInfo(HttpSession session);
	
	/**
	 * 프로필 저장(추가)
	 * @param user(프로필 정보)
	 * @return int(프로필 저장한 갯수)
	 */
	public int addProfile(User user);

	/**
	 * 계정정보에 해당하는 프로필 리스트 호출
	 * @param int(accountNo)
	 * @return List<User>(프로필 리스트)
	 */
	public List<User> findUserListByAccountNo(int accountNo);

	/**
	 * 프로필 삭제
	 * @param int(accountNo)
	 * @param int(memberNo)
	 * @return int(프로필 삭제한 갯수)
	 */
	public int removeProfile(int accountNo, int memberNo);
	
	/**
	 * 계정정보에 해당하는 프로필 리스트 호출
	 * @param user(accountNo, memberNo)
	 * @return List<User>(회원리스트)
	 */
	public List<User> findMemberList(User user);

	/**
	 * 계정정보에 해당하는 프로필 갯수 호출
	 * @param int(accountNo)
	 * @return int(프로필 갯수)
	 */
	public int getMemberCountByAccountNo(int accountNo);
	
}
