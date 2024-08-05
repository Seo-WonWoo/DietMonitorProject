package com.app.validator;

import org.springframework.validation.Errors; 

import com.app.dto.user.User;
import com.app.dto.user.UserValidError;

public class UserValidator {

	public static void validate(User user, Errors errors) {

		if(user.getEmail() == null || user.getEmail().trim().equals("")) {
			errors.rejectValue("id", "EmptyUserId", "아이디 필수 입력해주세요.");
		}
		
		if(user.getPw().length() > 16 ) {
			errors.rejectValue("pw", "overSize", "16자리 이하로 입력해주세요.");
		}
		
		if(user.getPw().length() < 8 ) {
			errors.rejectValue("pw", "lackingSize", "8자리 이상 입력해주세요.");
		}
	}
	
	public static boolean validate(User user, UserValidError userValidError) {
		boolean result = true;
		
		if(user.getEmail() == null || user.getEmail().trim().equals("")) {
			userValidError.setId("아이디 입력은 필수입니다.");
			result = false;
		}
		
		if(user.getPw().length() > 16 ) {
			userValidError.setPw("16자리 이하로 입력해주세요.");
			result = false;
		}
		
		if(user.getPw().length() < 8 ) {
			userValidError.setPw("8자리 이상 입력해주세요.");
		}
		
		return result;
	}
	
}
