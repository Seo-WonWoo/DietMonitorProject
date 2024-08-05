package com.app.controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.dto.api.ApiResponse;
import com.app.dto.api.ApiResponseHeader;
import com.app.dto.customer.CustomerDupEmailCheckRequest;
import com.app.dto.user.User;
import com.app.dto.user.UserValidError;
import com.app.service.user.UserService;
import com.app.util.LoginManager;
import com.app.validator.UserValidator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CustomerController {

	@Autowired
	UserService userService;
	
	@GetMapping("/signup")
	public String signup() {
		
		log.info("/signup 접근 확인");
		
		return "signUp";
	}
	
	@PostMapping("/signup")
	public String signupAction(@Valid @ModelAttribute User user, BindingResult br, Model model) {
		
		UserValidError userValidError = new UserValidError();
		boolean isValid = UserValidator.validate(user, userValidError);
		model.addAttribute("userValidError", userValidError);
		
		if(br.hasErrors()) { //유효성 검증에서 문제가 있다!
			
			List<ObjectError> errorList = br.getAllErrors();
			for(ObjectError er : errorList) {
				log.info( er.getObjectName());
				log.info( er.getDefaultMessage());
				log.info( er.getCode());
				log.info( er.getCodes()[0] );
			}
			
			return "signUp";
		}
		
		
		int result = userService.saveUser(user);
		
		if(result > 0) {
			log.debug("사용자 회원가입 성공 {}", user);
			return "redirect:/main";
		} else {
			log.info("사용자 회원가입 실패 {}", user);
			return "signUp";			
		}
	}
	
	@ResponseBody
	@RequestMapping("/customer/isDuplicatedEmail")
	public ApiResponse<String> isDuplicatedEmail(@Valid @RequestBody CustomerDupEmailCheckRequest customerDupEmailCheckRequest) {
		
		// JSONObject json-simple
		
		//System.out.println(id);
		System.out.println(customerDupEmailCheckRequest.getEmail());	//abcd
		log.info("아이디 중복체크 시도" + customerDupEmailCheckRequest.getEmail());
		
		//id 중복체크 
		// DB에 해당 id가 있는지 확인
		boolean result = userService.isDuplicatedEmail(customerDupEmailCheckRequest.getEmail());
		
		ApiResponse<String> response = new ApiResponse<String>();
		ApiResponseHeader header = new ApiResponseHeader();
		response.setBody(customerDupEmailCheckRequest.getEmail());
		
		if(result) { //중복
			header.setResultCode("99");
			header.setResultMessage("중복된 아이디입니다.");
		} else { //아니다 사용가능하다
			header.setResultCode("200");
			header.setResultMessage("사용가능한 아이디입니다.");
		}
		
		response.setHeader(header);
		
		return response;
	}
	
	@GetMapping("/login")
	public String login() {
		
		return "customer/login"; 
	}
	
	@PostMapping("/login")
	public String loginAction(User user, HttpSession session) {
		//id pw 
		
		//id pw 동일한값이 DB 있는가?
		User loginUser = userService.isValidCustomerLogin(user);
		
		if(loginUser == null) {
			return "customer/login";
		}
		
		//Session로그인 처리
		//session.setAttribute("loginUserId", loginUser.getId());	//
		LoginManager.setSessionLogin(loginUser.getEmail(), session);
		
		return "redirect:/main";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//session.invalidate();
		LoginManager.logout(session);
		
		return "redirect:/main";
	}
	
	@GetMapping("/customer/mypage")
	public String mypage(HttpSession session, Model model) {
		
		if(LoginManager.isLogin(session)) {
			// Mypage 정보 조회 -> model 화면
			String email = LoginManager.getLoginUserEmail(session);
			User user = userService.findUserByEmail(email);
			model.addAttribute("user", user);
			
			return "customer/mypage";
		}
		
		return "redirect:/login";		
	}
	
}


