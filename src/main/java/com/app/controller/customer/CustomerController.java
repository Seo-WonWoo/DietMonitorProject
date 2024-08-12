package com.app.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.dto.api.ApiResponse;
import com.app.dto.api.ApiResponseHeader;
import com.app.dto.user.CustomerDupEmailCheckRequest;
import com.app.dto.user.NutritionStandard;
import com.app.dto.user.Profile;
import com.app.dto.user.User;
import com.app.dto.user.UserValidError;
import com.app.service.user.UserService;
import com.app.util.SessionManager;
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
		System.out.println(UserValidator.isEmail(user.getEmail()));
		User targetUser = userService.findUserByEmail(user.getEmail());
		
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
				System.out.println(er.getObjectName());
				System.out.println(er.getDefaultMessage());
				System.out.println(er.getCode());
				System.out.println(er.getCodes()[0] );
				System.out.println("BindingResult에서 오류감지");
			}

			return "signUp";
		}
		
		if(user.getPw().equals(user.getChkPw()) &&UserValidator.isBirth(user.getBirth())
				&& targetUser == null) {
			int result = userService.saveUser(user);
			
			if(result > 0) {
				log.debug("사용자 회원가입 성공 {}", user);
				return "redirect:/login";
			} else {
				log.info("사용자 회원가입 실패 {}", user);
				System.out.println("쿼리문 작동 안됨");
				return "signUp";
			}
		} else if ( targetUser != null ) {
			userValidError.setEmail("이미 가입된 이메일입니다.");
		}
		return "signUp";
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
			header.setResultMessage("중복된 이메일입니다.");
		} else { //아니다 사용가능하다
			header.setResultCode("200");
			header.setResultMessage("사용가능한 이메일입니다.");
		}

		response.setHeader(header);

		return response;
	}

	@GetMapping("/login")
	public String login() {
		
		return "login"; 
	}

	@PostMapping("/login")
	public String loginAction(User user, HttpSession session, Model model) {
		
		User loginUser = userService.isValidCustomerLogin(user);
		System.out.println(loginUser);
		
		if(loginUser == null) {
			System.out.println("null : " + loginUser);
			return "login";
		}
		session.setAttribute("user", loginUser);
		SessionManager.setSessionAccount(loginUser.getAccountNo(), loginUser.getMemberNo(), session);
		
		List<NutritionStandard> nc = userService.getNutritionStandardByMemberInfo(session);
		System.out.println(nc);
		
		int accountNo = (int)session.getAttribute("accountNo");
	    int memberNo = (int)session.getAttribute("memberNo");

	    user.setAccountNo(accountNo);
	    user.setMemberNo(memberNo);

	    List<User> profiles = userService.findUserListByAccountNo(accountNo);

	    for (User profile : profiles) {
	        int age = userService.getAgeByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	    }

	    session.setAttribute("profiles", profiles);
	    model.addAttribute("profiles", profiles);

		return "redirect:/myInfo"; 
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//session.invalidate();
		SessionManager.logout(session);

		return "redirect:/main";
	}

//	@GetMapping("/myInfo")
//	public String myInfo(HttpSession session, Model model) {
//		if (SessionManager.isLoginedAccount(session)) {
//			// 세션에서 로그인된 사용자의 accountNo와 memberNo를 조회
//			int accountNo = (int)session.getAttribute("accountNo");
//			int memberNo = (int)session.getAttribute("memberNo");
//			// 사용자 정보를 조회
//			User user = userService.findUserByMemberInfo(accountNo, memberNo);
//			// 사용자의 나이 계산
//			int age = userService.getAgeByMemberInfo(accountNo, memberNo);
//			System.out.println(age);
//			int genderId = user.getGenderId();
//			
//			String genderName = userService.getGenderNameByGenderId(genderId);
//
//			// 모델에 사용자 정보와 나이 추가
//			model.addAttribute("user", user);
//			model.addAttribute("age", age);
//			model.addAttribute("genderName", genderName);
//			model.addAttribute("accountNo", accountNo);
//			model.addAttribute("memberNo", memberNo);
//
//			return "myInfo";
//		}
//
//		return "redirect:/login";
//	}
	
	@GetMapping("/myInfoModify")
	public String myInfoModify() {
		
		return "myInfoModify";
	}
	
	@PostMapping("/myInfoModify")
	public String myInfoModifyActive() {
	    
	    return "redirect:/myInfo";
	}
	
//	@GetMapping("/myIntakeFood")
//	public String myIntakeFood() {
//
//		return "myIntakeFood";
//	}
	
//	@PostMapping("/myIntakeFood")
//	public String myIntakeFoodAction() {
//		
//		return "myIntakeFood";
//	}
	
	@GetMapping("/manageProfile")
	public String manageProfile(){
	    
	    return "manageProfile";
	}
	
	@PostMapping("/manageProfile")
	public String manageProfileAction(HttpSession session, HttpServletResponse response,
										User user, Model model) throws IOException {
		System.out.println("controller");
		
		int accountNo = (int) session.getAttribute("accountNo");
		int memberNo = (int) session.getAttribute("memberNo");
	    
	    user.setAccountNo(accountNo);
	    user.setMemberNo(memberNo);
	    
	    List<User> profiles = userService.findUserListByAccountNo(accountNo);

	    for (User profile : profiles) {
	        int age = userService.getAgeByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	    }

	    session.setAttribute("profiles", profiles);
	    model.addAttribute("profiles", profiles);
		
		int profileCount = userService.getMemberCount(user);
		
		model.addAttribute("profileCount", profileCount);
		if(profileCount < 5) {
			System.out.println(user);
			int result = userService.addProfile(user);
			System.out.println(result);
			
			if(result > 0) {
				log.debug("프로필 추가 성공 {}", user);
				
				return "redirect:/manageProfile";
			} else {
				log.info("프로필 추가 실패 {}", user);
				return "manageProfile";
			}
		}else {
			System.out.println("5개 초과");
			PrintWriter out = response.getWriter();
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			out.println("<script> alert('프로필 추가 개수는 5개까지입니다.');");
			out.println("history.go(-1); </script>"); 
			out.close();
			return "manageProfile";
		}
		
	}
	
	@PostMapping("/removeProfile")
	public String removeProfile(@RequestParam("accountNo") int accountNo,
	                            @RequestParam("memberNo") int memberNo, HttpServletResponse response) throws IOException {
	    int result = userService.removeProfile(accountNo, memberNo);
	    if(result == 0) {
	    	PrintWriter out = response.getWriter();
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			out.println("<script> alert('해당 계정은 삭제할 수 없는 계정입니다.');");
			out.println("history.go(-1); </script>"); 
			out.close();
	    }
	    return "redirect:/manageProfile";
	}
	
	@PostMapping("/switchProfile")
	public String switchProfile(@RequestParam("accountNo") int accountNo, 
	                            @RequestParam("memberNo") int memberNo, 
	                            HttpSession session) {
	    
		User switchProfile = userService.findUserByMemberInfo(accountNo, memberNo);
	    
	    session.setAttribute("switchProfile", switchProfile);

	    
	    return "redirect:/main";
	}
}
