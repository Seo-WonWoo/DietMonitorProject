package com.app.controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.app.dto.api.ApiResponse;
import com.app.dto.api.ApiResponseHeader;
import com.app.dto.user.CustomerDupEmailCheckRequest;
import com.app.dto.user.User;
import com.app.dto.user.UserValidError;
import com.app.service.diet.DietService;
import com.app.service.user.UserService;
import com.app.util.SessionManager;
import com.app.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	DietService dietService;

	@GetMapping("/signup")
	public String signup() {
		
		System.out.println("get signup");
		
		return "user/signUp";
	}

	@PostMapping("/signup")
	public String signupAction(@Valid @ModelAttribute User user, BindingResult br, HttpServletResponse response, Model model) throws IOException {
		
		UserValidError userValidError = new UserValidError();
		
		boolean isValid = UserValidator.validate(user, userValidError);
		
		System.out.println("isValid" + isValid);
		
		model.addAttribute("userValidError", userValidError);		
		
		if(isValid) {
			int result = userService.saveUser(user);
			
			if(result > 0) {
				PrintWriter out = response.getWriter();
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				out.println("<script> alert('회원가입 완료되었습니다.');");
				out.println("location.href='login'; </script>"); 
				out.close();
				return "redirect:/login";
			} else {
				System.out.println("쿼리문 작동 안됨");
				return "user/signUp";
			}
			
		} else {
			System.out.println("회원가입 양식 오류  수정 요망");
			return "user/signUp";
		}
		
	}
	

	@ResponseBody
	@RequestMapping("/user/isDuplicatedEmail")
	public ApiResponse<String> isDuplicatedEmail(@RequestBody CustomerDupEmailCheckRequest customerDupEmailCheckRequest) {
		
		boolean validResult = UserValidator.isEmail(customerDupEmailCheckRequest.getEmail());
		
		boolean dupResult = userService.isDuplicatedEmail(customerDupEmailCheckRequest.getEmail());
		
		ApiResponse<String> response = new ApiResponse<String>();
		ApiResponseHeader header = new ApiResponseHeader();
		response.setBody(customerDupEmailCheckRequest.getEmail());

		if(!validResult) {
			header.setResultCode("10");
			header.setResultMessage("올바르지 않은 이메일 형식입니다.");
			response.setHeader(header);
			return response;
		}
		
		if(dupResult) {
			header.setResultCode("99");
			header.setResultMessage("중복된 이메일입니다.");
		} else {
			header.setResultCode("200");
			header.setResultMessage("사용가능한 이메일입니다.");
		}

		response.setHeader(header);
		return response;
	}

	@GetMapping("/login")
	public String login() {
		
		return "user/login"; 
	}

	@PostMapping("/login")
	public String loginAction(User user, HttpSession session, Model model) {
		
		User loginUser = userService.isValidCustomerLogin(user);
		System.out.println("loginUser : " + loginUser);
		
		if(loginUser == null) {
			System.out.println("null : " + loginUser);
			model.addAttribute("logErrorMsg", "아이디 또는 패스워드가 일치하지 않습니다");
			return "user/login";
		}		
		
		SessionManager.setSessionAccount(loginUser.getAccountNo(), loginUser.getMemberNo(), session);
		
		int result = dietService.deleteAllExpectedDiet(loginUser);
		System.out.println("삭제된 예상 식단 데이터 개수 : " + result);
		
	    List<User> profiles = userService.findUserListByAccountNo(loginUser.getAccountNo());

	    for (User profile : profiles) {
	        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	    }
	    	    
	    session.setAttribute("profiles", profiles);

		return "redirect:/mypage/accountInfo"; 
	}	

	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//session.invalidate();
		SessionManager.logout(session);

		return "redirect:/main";
	}

	
}
