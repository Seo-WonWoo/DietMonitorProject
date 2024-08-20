package com.app.dto.user;

import lombok.Data;

@Data
public class UserValidError {
	
	String email;
	String pw;
	String chkPw;
	String name;
	String nickname;
	String tel;
	String birth;
	String pregnantDate;
	int genderCode;
}
