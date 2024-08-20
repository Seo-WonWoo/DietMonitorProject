package com.app.dto.user;

import lombok.Data;

@Data
public class User {
	int accountNo;
	int memberNo;
	String email;
	String pw;
	String chkPw;
	String name;
	String nickname;
	String tel;
	String birth;
	int genderId;
	int age;
	String genderName;
	int iconId;
	String pregnantDate;
}