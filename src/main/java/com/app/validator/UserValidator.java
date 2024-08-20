package com.app.validator;

import java.time.LocalDate;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import com.app.dto.user.User;
import com.app.dto.user.UserValidError;
import com.app.service.user.UserService;
import com.app.util.ConvertDateUtil;

public class UserValidator {
	
	@Autowired
	static
	UserService userService;

	//정규식 일치 확인부
	public static boolean isEmail(String str) {
		return Pattern.matches("^[a-z0-9A-Z._-]*@[a-z0-9A-Z]*.[a-zA-Z.]*$", str);
	}

	public static boolean isKorean(String str) {
		return Pattern.matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣0-9!?()]+.*", str.replace("\n",""));
	}
	
	public static boolean isPhone(String str) {
        return Pattern.matches("^\\d{2,3}\\d{3,4}\\d{4}$", str);
    }
	
	public static boolean isBirth(String str) {
        return Pattern.matches("^(?:[0-9]{4}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))", str);
    }
	
	public static boolean isBirthDateCondition(String str) {
		LocalDate today = LocalDate.now();
		LocalDate BirthDate = ConvertDateUtil.convertStringToLocalDateTime(str);
        return BirthDate.isBefore(today);
    }

	public static boolean validate(User user, UserValidError userValidError) {
		boolean result = true;

		if (user.getEmail() == null || user.getEmail().trim().equals("")) {
			userValidError.setEmail("이메일 입력은 필수입니다.");
			result = false;
		} else if(!isEmail(user.getEmail())) {
			userValidError.setEmail("올바르지 않은 이메일 형식입니다.");
			result = false;
		}
		
		if (user.getEmail().length() > 40) {
			userValidError.setEmail("40자리 이하로 입력해주세요.");
			result = false;
		}
		
		if (user.getPw().length() > 16) {
			userValidError.setPw("16자리 이하로 입력해주세요.");
			result = false;
		}

		if (user.getPw().length() > 16) {
			userValidError.setPw("16자리 이하로 입력해주세요.");
			result = false;
		}

		if (user.getPw().length() < 8) {
			userValidError.setPw("8자리 이상 입력해주세요.");
			result = false;
		}

		if(!user.getPw().equals( user.getChkPw()) ) {
			userValidError.setChkPw("비밀번호가 일치하지 않습니다.");
			result = false;
		}

		if(!isKorean(user.getName()) || user.getName().length() < 2 || user.getName().length() > 10) {
			userValidError.setName("올바르지 않은 이름입니다.");
			result = false;
		}
		
		if (user.getNickname().length() > 20) {
			userValidError.setNickname("10자리 이하로 입력해주세요.");
			result = false;
		}

		if(!isPhone(user.getTel()) || user.getTel().length() > 11) {
			userValidError.setTel("-를 제외한 전화번호 11자리를 입력해주세요");
			result = false;
		}
		
		if(!isBirth(user.getBirth())) {
			userValidError.setBirth("정확한 생년월일 8자리를 입력해주세요.");
			result = false;
		} else if(!isBirthDateCondition(user.getBirth())) {
			userValidError.setBirth("생년월일은 금일 이전 날짜로 입력해주세요");
			result = false;
		}
		
		if(user.getGenderId() == 5) {
			if(!isBirth(user.getPregnantDate())) {
				userValidError.setPregnantDate("정확한 임신시작일 8자리를 입력해주세요.");
				result = false;
			} else if(!isBirthDateCondition(user.getPregnantDate())) {
				userValidError.setPregnantDate("임신시작일은 금일 이전 날짜로 입력해주세요");
				result = false;
			}
		}

		return result;
	}
	
	public static boolean validateProfile(User user, UserValidError userValidError) {
		boolean result = true;
		
		if(!isBirth(user.getBirth())) {
			userValidError.setBirth("정확한 생년월일 8자리를 입력해주세요.");
			result = false;
		} else if(!isBirthDateCondition(user.getBirth())) {
			userValidError.setBirth("생년월일은 금일 이전 날짜로 입력해주세요");
			result = false;
		}
		
		if(user.getGenderId() == 5) {
			if(!isBirth(user.getPregnantDate())) {
				userValidError.setPregnantDate("정확한 임신시작일 8자리를 입력해주세요.");
				result = false;
			} else if(!isBirthDateCondition(user.getPregnantDate())) {
				userValidError.setPregnantDate("임신시작일은 금일 이전 날짜로 입력해주세요");
				result = false;
			}
		}
		System.out.println(userValidError);
		
		return result;
	}

}
