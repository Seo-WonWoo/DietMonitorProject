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

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	DietService dietService;

	@GetMapping("/signup")
	public String signup() {
		log.info("회원가입 페이지로 이동합니다.");
		
		return "user/signUp";
	}

	 @PostMapping("/signup")
	    public String signupAction(@Valid @ModelAttribute User user, HttpServletResponse response, Model model) throws IOException {

		 	//회원정보 유효성검사 클래스 객체 생성
	        UserValidError userValidError = new UserValidError();
	        
	        //회원정보 유효성 검사 실행 및 결과 호출
	        boolean isValid = UserValidator.validate(user, userValidError);

	        log.info("회원가입 요청이 들어왔습니다. 유효성 검사 결과: {}", isValid);
	        
	        //회원정보 유효성 검사 에러 정보 반환
	        model.addAttribute("userValidError", userValidError);
	        
	        
	        if (isValid) { //유효성 검사 통과 경우
	        	
	        	//회원 정보 DB 저장 및 결과 호출
	            int result = userService.saveUser(user);
	            log.info("유효성 검사를 통과하여 사용자 정보를 저장 시도 중입니다.");
	            
	            if (result > 0) { //DB 저장 완료 경우
	            	log.info("회원가입 성공. 사용자 ID: {}", user.getAccountNo());
	            	
	            	//웹페이지 회원가입 알림창 실행
	                PrintWriter out = response.getWriter();
	                response.setCharacterEncoding("utf-8");
	                response.setContentType("text/html; charset=utf-8");
	                out.println("<script> alert('회원가입 완료되었습니다.'); </script>");
	                out.close();
	                
	                return "redirect:/login";
	                
	            } else { //DB 저장 실패 경우
	            	log.error("회원가입 실패: 사용자 저장 중 문제가 발생했습니다.");
	            	
	                return "user/signUp";
	            }
	        } else { //유효성 검사 실패 경우
	        	log.warn("회원가입 유효성 검사를 통과하지 못했습니다. 오류: {}", userValidError);
	        	
	            return "user/signUp";
	        }
	    }
	

	@ResponseBody
	@RequestMapping("/user/isDuplicatedEmail")
	public ApiResponse<String> isDuplicatedEmail(@RequestBody CustomerDupEmailCheckRequest customerDupEmailCheckRequest) {
		
		log.info("이메일 중복 확인 요청. 이메일: {}", customerDupEmailCheckRequest.getEmail());
		
		//이메일 유효성 검사 실행 및 결과 호출
		boolean validResult = UserValidator.isEmail(customerDupEmailCheckRequest.getEmail());
		
		//이메일 중복 확인 및 결과 호출
		boolean dupResult = userService.isDuplicatedEmail(customerDupEmailCheckRequest.getEmail());
		
		//API 클래스 response 객체 생성 및 이메일 정보 저장
		ApiResponse<String> response = new ApiResponse<String>();
		ApiResponseHeader header = new ApiResponseHeader();
		response.setBody(customerDupEmailCheckRequest.getEmail());

		if(!validResult) { //이메일 유효성 검사 실패 경우
			log.warn("잘못된 이메일 형식: {}", customerDupEmailCheckRequest.getEmail());
			header.setResultCode("10");
			header.setResultMessage("올바르지 않은 이메일 형식입니다.");
			response.setHeader(header);
			return response;
		}
		
		if(dupResult) { //이메일 중복 확인 실패 경우
			log.info("중복된 이메일입니다: {}", customerDupEmailCheckRequest.getEmail());
			
			//결과 코드 및 메세지 헤더객체 저장
			header.setResultCode("99");
			header.setResultMessage("중복된 이메일입니다.");
			
		} else { //이메일 중복 확인 통과 경우
			log.info("사용 가능한 이메일입니다: {}", customerDupEmailCheckRequest.getEmail());
			
			//결과 코드 및 메세지 헤더객체 저장
			header.setResultCode("200");
			header.setResultMessage("사용가능한 이메일입니다.");
		}
		
		//response 객체에 헤더정보 저장
		response.setHeader(header);
		
		//response 객체 반환
		return response;
	}

	@GetMapping("/login")
	public String login() {
		
		log.info("로그인 페이지로 이동합니다.");
		
		return "user/login"; 
	}

	@PostMapping("/login")
	public String loginAction(User user, HttpSession session, Model model) {
		
		log.info("로그인 요청. 유저 ID: {}", user.getEmail());
		
		//입력정보로 회원 검색 및 호출(로그인 시도)
		User loginUser = userService.isValidCustomerLogin(user);
		log.debug("로그인 유저 정보: {}", loginUser);
		
		if(loginUser == null) { //로그인 실패 경우
			log.warn("로그인 실패: 아이디 또는 패스워드 불일치.");
			
			//로그 에러 메세지 반환
			model.addAttribute("logErrorMsg", "아이디 또는 패스워드가 일치하지 않습니다");
			
			return "user/login";
		}		
		
		log.info("로그인 성공. 세션 설정 중. 유저 ID: {}", loginUser.getAccountNo());
		
		//로그 회원정보(계정번호, 멤버번호) 세션 저장
		SessionManager.setSessionAccount(loginUser.getAccountNo(), loginUser.getMemberNo(), session);
		
		//예상 식단 DB데이터 삭제 실행 및 결과 호출
		int result = dietService.deleteAllExpectedDiet(loginUser);
		log.info("삭제된 예상 식단 데이터 개수: {}", result);
		
		//계정번호 내 프로필 리스트 호출
	    List<User> profiles = userService.findUserListByAccountNo(loginUser.getAccountNo());
	    log.debug("연결된 유저 프로필 개수: {}", profiles.size());

	    for (User profile : profiles) {
	    	//프로필별 나이/성별 산출 및 프로필 객체내 정보 저장
	        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	        log.debug("프로필 정보 업데이트 - 나이: {}, 성별: {}", age, genderName);
	    }
	    
	    //프로필 리스트정보 세션 저장
	    session.setAttribute("profiles", profiles);
	    log.info("로그인 후 마이페이지로 리다이렉트됩니다.");

		return "redirect:/mypage/accountInfo"; 
	}	

	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		log.info("로그아웃 요청. 세션 종료 중.");
		
		//세션정보 삭제
		SessionManager.logout(session);
		log.info("로그아웃 완료. 메인 페이지로 이동합니다.");
		
		return "redirect:/main";
	}

	
}
