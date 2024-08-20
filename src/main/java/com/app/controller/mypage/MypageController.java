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

@Controller
public class MypageController {

	@Autowired
	MypageService mypageService;

	@Autowired
	UserService userService;

	@GetMapping("/mypage/nutritionStandard")
	public String nutritionStandard(Model model, HttpSession session, TotalDietSearchCondition t1) {
		
		if (SessionManager.isLoginedAccount(session)) {
			// 세션에서 로그인된 사용자의 accountNo와 memberNo를 조회
			int accountNo = SessionManager.getAccountNo(session);
			int memberNo = SessionManager.getMemberNo(session);
			// 사용자 정보를 조회			
			t1.setAccountNo(accountNo);
			t1.setMemberNo(memberNo);
	
			//System.out.println(t1);
			Diet totalDietAvg = mypageService.findTotalDietByAvg(t1);
			List<Diet> findTotalDietByStandard = mypageService.findTotalDietByStandard(t1);
			
			//System.out.println(totalDietList);
			System.out.println(findTotalDietByStandard);
			model.addAttribute("totalDietAvg", totalDietAvg);
			model.addAttribute("findTotalDietByStandard", findTotalDietByStandard);			
			
			return "/mypage/nutritionStandard";
		}	
		return "/mypage/nutritionStandard";
	}

	@GetMapping("/mypage/dietProgress")
	public String dietProgress(Model model, HttpSession session, TotalDietSearchCondition t1) {

		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);

		t1.setAccountNo(accountNo);
		t1.setMemberNo(memberNo);

		System.out.println(t1);
		
		List<Diet> totalDietListMonthSum = mypageService.findTotalDietByMonthSum(t1);
		List<Diet> findTotalDietByStandard = mypageService.findTotalDietByStandard(t1);

		System.out.println(totalDietListMonthSum);
		model.addAttribute("totalDietListMonthSum", totalDietListMonthSum);
		model.addAttribute("findTotalDietByStandard", findTotalDietByStandard);			
		

		return "/mypage/dietProgress";
	}

	@GetMapping("/mypage/dietHistory")
	public String dietHistory() {
		return "/mypage/dietHistory";
	}

	@PostMapping("/mypage/dietHistory")
	public String dietHistory(Model model, TotalDietSearchCondition t1, HttpSession session) {
		
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);

		t1.setAccountNo(accountNo);
		t1.setMemberNo(memberNo);

		System.out.println(t1);
		List<Diet> totalDietList = mypageService.findTotalDietBySaveHistory(t1);
		List<Diet> totalDietListSum = mypageService.findTotalDietBySaveHistorySum(t1);

		System.out.println(totalDietList);
		System.out.println(totalDietListSum);
		model.addAttribute("totalDietList", totalDietList);
		model.addAttribute("totalDietListSum", totalDietListSum);

		return "/mypage/dietHistory";
	}

	@GetMapping("/mypage/accountInfo")
	public String accountInfo(HttpSession session, Model model) {
		if (SessionManager.isLoginedAccount(session)) {
			// 세션에서 로그인된 사용자의 accountNo와 memberNo를 조회
			int accountNo = SessionManager.getAccountNo(session);
			int memberNo = SessionManager.getMemberNo(session);
			// 사용자 정보를 조회
			User user = userService.findUserByMemberInfo(accountNo, memberNo);
			// 사용자의 나이 계산			
			int months = userService.getMonthsByMemberInfo(accountNo, memberNo);
			user.setAge(months);
			
			String userGenderName = userService.getGenderNameByGenderId(user.getGenderId());
			user.setGenderName(userGenderName);
			
			model.addAttribute("user", user);
			
			List<User> profiles = userService.findUserListByAccountNo(accountNo);
		    
		    for (User profile : profiles) {
		        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
		        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
		        profile.setAge(age);
		        profile.setGenderName(genderName);
		    }
		    
		    session.setAttribute("profiles", profiles);
			
			
			return "mypage/accountInfo";
		}

		return "redirect:/member/login";
	}

	@GetMapping("/mypage/modifyAccount")
	public String modifyAccount(HttpSession session, Model model) {
		
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		User user = userService.findUserByMemberInfo(accountNo, memberNo);
		
		model.addAttribute("user", user);
		
		return "mypage/modifyAccount";
	}
	
	@PostMapping("/mypage/modifyAccount")
	public String modifyAccountAction(HttpSession session, User user, BindingResult br, Model model) {
		
		System.out.println("정보수정컨트롤러");
		
		user.setAccountNo((int)session.getAttribute("accountNo"));
		user.setMemberNo((int)session.getAttribute("memberNo"));
		
		boolean isValid;
		
		UserValidError userValidError = new UserValidError();
		if(user.getMemberNo() == 1) {
			isValid = UserValidator.validate(user, userValidError);
		} else {
			isValid = UserValidator.validateProfile(user, userValidError);			
		}
		
		model.addAttribute("userValidError", userValidError);
		
		if(isValid) {
			int result = userService.modifyUser(user);

			if (result > 0) {
				return "redirect:/mypage/accountInfo";
			} else {
				System.out.println("쿼리문 작동 안됨");
				return "mypage/modifyAccount";
			}
			
		} else {
			System.out.println("양식 오류 수정 요망");
			return "mypage/modifyAccount";
		}
	}
	

	@RequestMapping("/mypage/manageProfile")
	public String manageProfileAction(HttpSession session, Model model)  {
		
		int accountNo = SessionManager.getAccountNo(session);
	    
	    List<User> profiles = userService.findUserListByAccountNo(accountNo);
	    
	    for (User profile : profiles) {
	        int age = userService.getMonthsByMemberInfo(profile.getAccountNo(), profile.getMemberNo());
	        String genderName = userService.getGenderNameByGenderId(profile.getGenderId());
	        profile.setAge(age);
	        profile.setGenderName(genderName);
	    }
	    
	    session.setAttribute("profiles", profiles);
	   
			return "mypage/manageProfile";
		}

	
	@PostMapping("/addProfile")
	public String addProfile(@Valid @ModelAttribute User user, HttpSession session, HttpServletResponse response, BindingResult br, Model model) throws IOException {
		
		UserValidError userValidError = new UserValidError();
		
		boolean isValid = UserValidator.validateProfile(user, userValidError);
		
		model.addAttribute("userValidError", userValidError);		
		
		if(isValid) {
			
			int accountNo = SessionManager.getAccountNo(session);
			
			user.setAccountNo(accountNo);
			
			int profileCount = userService.getMemberCountByAccountNo(accountNo);
			
			if(profileCount < 5) {
				
				int result = userService.addProfile(user);
				
				if(result > 0) {					
					return "redirect:/mypage/manageProfile";
				} else {
					PrintWriter out = response.getWriter();
					response.setCharacterEncoding("utf-8");
					response.setContentType("text/html; charset=utf-8");
					out.println("<script> alert('프로필 추가 중 오류가 발생했습니다.');");
					out.println("history.go(-1); </script>"); 
					out.close();
				}
			}else {
				System.out.println("5개 초과");
				PrintWriter out = response.getWriter();
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				out.println("<script> alert('프로필 추가 개수는 5개까지입니다.');");
				out.println("history.go(-1); </script>"); 
				out.close();
			}
			
		} else {
			System.out.println("양식 오류  수정 요망");
			return "mypage/manageProfile";
		}

		return "redirect:/mypage/manageProfile";
	}

	@PostMapping("/removeProfile")
	public String removeProfile(User user, HttpServletResponse response) throws IOException {
		
	    int result = userService.removeProfile(user.getAccountNo(), user.getMemberNo());
	    if(result == 0) {
	    	PrintWriter out = response.getWriter();
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
		
		SessionManager.setSessionAccount(user.getAccountNo(), user.getMemberNo(), session);
		
	    return "redirect:/main";
	}

}
