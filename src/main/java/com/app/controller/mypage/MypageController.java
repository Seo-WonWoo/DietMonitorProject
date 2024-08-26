package com.app.controller.mypage;

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
import org.springframework.web.bind.annotation.RequestMapping;
import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.dto.user.User;
import com.app.dto.user.UserValidError;
import com.app.service.mypage.MypageService;
import com.app.service.user.UserService;
import com.app.util.SessionManager;
import com.app.validator.UserValidator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;

	@Autowired
	UserService userService;

	@GetMapping("/mypage/nutritionStandard")
	public String nutritionStandard(Model model, HttpSession session, TotalDietSearchCondition t1) {
		
		log.info("호출됨: /mypage/nutritionStandard");
		
		if (SessionManager.isLoginedAccount(session)) {
			//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
			int accountNo = SessionManager.getAccountNo(session);
			int memberNo = SessionManager.getMemberNo(session);
			log.debug("로그인된 사용자 - accountNo: {}, memberNo: {}", accountNo, memberNo);
			
			//로그인된 계정번호와 멤버번호를 검색정보 변수에 저장			
			t1.setAccountNo(accountNo);
			t1.setMemberNo(memberNo);
	
			//일주일간 섭취한 영양 성분의 평균
			Diet AvgWeeklyNutrientByMemberInfo = mypageService.findAvgWeeklyNutrientByMemberInfo(t1);
			//회원 정보에 알맞은 영양 성분 섭취 기준치
			List<Diet> NutrientStandardByMemberInfo = mypageService.getNutrientStandardByMemberInfo(t1);
			log.debug("표준 다이어트 리스트: {}", NutrientStandardByMemberInfo);
			
			//영양 성분의 평균 및 회원 영양 성분 섭취 기준치 반환
			model.addAttribute("AvgWeeklyNutrientByMemberInfo", AvgWeeklyNutrientByMemberInfo);
			model.addAttribute("NutrientStandardByMemberInfo", NutrientStandardByMemberInfo);			
			
			return "/mypage/nutritionStandard";
		}	
		log.warn("사용자가 로그인되지 않음.");
		return "/mypage/nutritionStandard";
	}

	@GetMapping("/mypage/dietProgress")
	public String dietProgress(Model model, HttpSession session, TotalDietSearchCondition t1) {
		
		log.info("호출됨: /mypage/dietProgress");
		
		//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);

		//로그인된 계정번호와 멤버번호를 검색정보 변수에 저장	
		t1.setAccountNo(accountNo);
		t1.setMemberNo(memberNo);

		log.debug("검색 조건: {}", t1);
		
		//한달간 섭취한 영양 성분의 성분별 추이 데이터
		List<Diet> DailyTotalNutrientForPast30DaysByMemberInfo = mypageService.getDailyTotalNutrientForPast30DaysByMemberInfo(t1);
		//회원 정보에 알맞은 영양 성분 섭취 기준치
		List<Diet> NutrientStandardByMemberInfo = mypageService.getNutrientStandardByMemberInfo(t1);

		log.debug("월별 다이어트 합계 리스트: {}", DailyTotalNutrientForPast30DaysByMemberInfo);
		
		//영양 성분별 추이 및 회원 영양 성분 섭취 기준치 반환
		model.addAttribute("DailyTotalNutrientForPast30DaysByMemberInfo", DailyTotalNutrientForPast30DaysByMemberInfo);
		model.addAttribute("NutrientStandardByMemberInfo", NutrientStandardByMemberInfo);

		return "/mypage/dietProgress";
	}

	@GetMapping("/mypage/dietHistory")
	public String dietHistory() {
		log.info("호출됨: /mypage/dietHistory");
		return "/mypage/dietHistory";
	}

	@PostMapping("/mypage/dietHistory")
	public String dietHistory(Model model, TotalDietSearchCondition t1, HttpSession session) {
		
		log.info("다이어트 기록 POST 처리 중");
		
		//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);

		//로그인된 계정번호와 멤버번호를 검색정보 변수에 저장
		t1.setAccountNo(accountNo);
		t1.setMemberNo(memberNo);

		log.debug("검색 조건: {}", t1);
		
		//선택한 기간동안의 섭취 음식물 및 성분
		List<Diet> TotalDietBySearchCondition = mypageService.findTotalDietBySearchCondition(t1);
		//선택한 기간동안의 각 날짜의 섭취 성분 총합
		List<Diet> DailyTotalNutrientBySearchCondition = mypageService.getDailyTotalNutrientBySearchCondition(t1);

		log.debug("다이어트 기록 리스트: {}", TotalDietBySearchCondition);
        log.debug("다이어트 기록 합계: {}", DailyTotalNutrientBySearchCondition);
        
        //선택한 기간동안의 섭취 음식물 및 성분과 날짜별 섭취 성분 총합 반환
        model.addAttribute("TotalDietBySearchCondition", TotalDietBySearchCondition);
		model.addAttribute("DailyTotalNutrientBySearchCondition", DailyTotalNutrientBySearchCondition);

		return "/mypage/dietHistory";
	}

	@GetMapping("/mypage/accountInfo")
	public String accountInfo(HttpSession session, Model model) {
		
		log.info("호출됨: /mypage/accountInfo");
		
		if (SessionManager.isLoginedAccount(session)) { //세션에 로그인된(계정번호 세션 존재) 경우
			
			//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
			int accountNo = SessionManager.getAccountNo(session);
			int memberNo = SessionManager.getMemberNo(session);
			log.debug("사용자 정보 - accountNo: {}, memberNo: {}", accountNo, memberNo);
			
			//사용자 정보를 조회
			User user = userService.findUserByMemberInfo(accountNo, memberNo);
			//사용자의 나이 계산			
			int months = userService.getMonthsByMemberInfo(accountNo, memberNo);
			user.setAge(months);
			
			//성별명 호출 및 저장
			String userGenderName = userService.getGenderNameByGenderId(user.getGenderId());
			user.setGenderName(userGenderName);
			
			log.debug("사용자 세부 정보: {}", user);
			
			//사용자 정보 반환
			model.addAttribute("user", user);
			
			//계정내 프로필 리스트 호출
			List<User> profiles = userService.findUserListByAccountNo(accountNo);
		    
		    for (User profile : profiles) {
		    	//프로필별 나이, 성별명 산출 및 저장
		        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
		        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
		        profile.setAge(age);
		        profile.setGenderName(genderName);
		    }
		    
		    //프로필 리스트 세션 저장
		    session.setAttribute("profiles", profiles);
			
			return "mypage/accountInfo";
		}
		log.warn("사용자가 로그인되지 않음. 로그인 페이지로 리다이렉트 중.");
		return "redirect:/member/login";
	}

	@GetMapping("/mypage/modifyAccount")
	public String modifyAccount(HttpSession session, Model model) {
		
		log.info("호출됨: /mypage/modifyAccount");
		
		//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		//계정번호와 멤버번호에 해당하는 멤버 호출
		User user = userService.findUserByMemberInfo(accountNo, memberNo);
		log.debug("수정할 사용자: {}", user);
		
		//멤버 정보 반환
		model.addAttribute("user", user);
		
		return "mypage/modifyAccount";
	}
	
	@PostMapping("/mypage/modifyAccount")
	public String modifyAccountAction(HttpSession session, User user, BindingResult br, Model model) {
		
		log.info("계정 수정 처리 중");
		
		//세션에서 로그인된 사용자의 계정번호와 멤버번호를 조회
		user.setAccountNo((int)session.getAttribute("accountNo"));
		user.setMemberNo((int)session.getAttribute("memberNo"));
		
		boolean isValid; //유효성 검사 결과 변수 선언
		
		UserValidError userValidError = new UserValidError(); //유효성 검사 객체 생성
		
		if(user.getMemberNo() == 1) { //계정 본인 경우
			isValid = UserValidator.validate(user, userValidError); //수정정보 유효성 검사 후 결과값 저장 
			
		} else { //계정내 다른 멤버 경우
			isValid = UserValidator.validateProfile(user, userValidError);			
		}
		
		//유효성 에러내역 반환
		model.addAttribute("userValidError", userValidError);
		
		if(isValid) { //유효성 검사 통과 경우
			
			//회원 수정정보 DB Update 및 결과 저장
			int result = userService.modifyUser(user);

			if (result > 0) { //DB Update 성공시
				log.info("계정 정보 수정 성공");
				return "redirect:/mypage/accountInfo";
				
			} else { //DB Update 실패시
				log.error("쿼리 실행 실패");
				return "mypage/modifyAccount";
			}
			
		} else { //유효성 검사 실패 경우
			log.warn("양식 오류 수정 필요");
			return "mypage/modifyAccount";
		}
	}
	

	@RequestMapping("/mypage/manageProfile")
	public String manageProfileAction(HttpSession session, Model model)  {
		
		log.info("호출됨: /mypage/manageProfile");
		
		//세션에서 로그인된 사용자의 계정번호 조회
		int accountNo = SessionManager.getAccountNo(session);
	    
		//계정내 프로필 리스트 호출
	    List<User> profiles = userService.findUserListByAccountNo(accountNo);
	    
	    for (User profile : profiles) {
	    	//프로필별 나이, 성별명 산출 및 저장
	        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	    }
	    
	    //프로필 리스트 세션 저장
	    session.setAttribute("profiles", profiles);
	   
			return "mypage/manageProfile";
		}

	
	@PostMapping("/addProfile")
	public String addProfile(@Valid @ModelAttribute User user, HttpSession session, HttpServletResponse response, Model model) throws IOException {
				
		UserValidError userValidError = new UserValidError(); //유효성 검사 객체 생성
		
		boolean isValid = UserValidator.validateProfile(user, userValidError); //멤버추가정보 유효성 검사 후 결과값 저장
		
		model.addAttribute("userValidError", userValidError); //유효성 에러내역 반환		
		
		if(isValid) { //유효성 검사 통과 경우
			
			//세션에서 로그인된 사용자의 계정번호 조회
			int accountNo = SessionManager.getAccountNo(session);			
			
			user.setAccountNo(accountNo);
			
			//계정내 프로필 리스트갯수 호출
			int profileCount = userService.getMemberCountByAccountNo(accountNo);
			
			if(profileCount < 5) { //프로필 갯수가 5개(최대한도) 미만 경우
				
				//멤버추가정보  DB 저장 및 결과값 저장
				int result = userService.addProfile(user);
				
				if(result > 0) { //DB 저장 성공시					
					log.info("프로필 추가 성공");
					return "redirect:/mypage/manageProfile";
					
				} else { //DB 저장 실패시	
					log.error("프로필 추가 중 오류 발생");					
					//웹페이지 알림 메세지 호출
					PrintWriter out = response.getWriter();
					response.setCharacterEncoding("utf-8");
					response.setContentType("text/html; charset=utf-8");
					out.println("<script> alert('프로필 추가 중 오류가 발생했습니다.');");
					out.println("history.go(-1); </script>"); 
					out.close();
				}
			}else { //프로필 갯수가 5개(최대한도) 이상 경우
				log.warn("최대 프로필 수 초과");
				//웹페이지 알림 메세지 호출
				System.out.println("5개 초과");
				PrintWriter out = response.getWriter();
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				out.println("<script> alert('프로필 추가 개수는 5개까지입니다.');");
				out.println("history.go(-1); </script>"); 
				out.close();
			}
			
		} else {
			log.warn("프로필 양식 오류 수정 필요");
			return "mypage/manageProfile";
		}

		return "redirect:/mypage/manageProfile";
	}

	@PostMapping("/removeProfile")
	public String removeProfile(User user, HttpServletResponse response) throws IOException {
		
		//DB에 계정번호와 멤버번호에 해당하는 사용자 삭제 및 결과 저장
	    int result = userService.removeProfile(user.getAccountNo(), user.getMemberNo());
	    
	    if(result == 0) { //DB 삭제 실패시
	    	PrintWriter out = response.getWriter();
	    	//웹페이지 알림 메세지 호출
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			out.println("<script> alert('해당 계정은 삭제할 수 없는 계정입니다.');");
			out.println("history.go(-1); </script>");
			out.close();
		}
		return "redirect:/mypage/manageProfile";
	}

	@PostMapping("/switchProfile")
	public String switchProfile(User user, HttpSession session) {
		
		//세션내 로그인중인 계정번호와 멤버번호 변경
		SessionManager.setSessionAccount(user.getAccountNo(), user.getMemberNo(), session);
		
	    return "redirect:/main";
	}

}
