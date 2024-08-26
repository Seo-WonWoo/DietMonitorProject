package com.app.controller.diet;

import java.util.ArrayList;
import java.util.List; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.dto.diet.Diet;
import com.app.dto.search.Nutrient;
import com.app.dto.user.NutritionStandard;
import com.app.dto.user.User;
import com.app.service.diet.DietService;
import com.app.service.search.SearchService;
import com.app.service.user.UserService;
import com.app.util.NutritionCalculator;
import com.app.util.SessionManager;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class DietController {
	
	@Autowired
	DietService dietService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	SearchService searchService;
	
	@PostMapping("/addDailyDiet")
	public String addDailyDiet(Diet diet,HttpSession session) {
		
		diet.setAccountNo(SessionManager.getAccountNo(session));
		diet.setMemberNo(SessionManager.getMemberNo(session));
		
		log.info("일일 식단 등록 요청: {}", diet);
		
		int result = dietService.addFoodToDailyDiet(diet);
		
		if(result > 0) {
			log.info("일일 식단 등록 성공");
			return "redirect:/diet/dailyDiet";
		} else {
			log.error("일일 식단 등록 실패");
			return "redirect:/search/foodDetail";
		}
	}
	
	@PostMapping("/addExpectedDiet")
	public String addExpectedDiet(Diet diet,HttpSession session) {
		
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		diet.setAccountNo(accountNo);
		diet.setMemberNo(memberNo);
		
		log.info("예상 식단 등록 요청: {}", diet);
		int result = dietService.addFoodToExpectedDiet(diet);
		
		log.info("예상 식단 등록 결과: {}", result);
		
		if(result > 0) {
			log.info("예상 식단 등록 성공");
			return "redirect:/diet/expectedDiet";
		} else {
			log.error("예상 식단 등록 실패");
			return "redirect:/search/foodDetail";
		}
	}
	
	@RequestMapping("/diet/dailyDiet")
	public String dailyDiet(HttpSession session, Model model, User user, Diet diet) {

		user.setAccountNo(SessionManager.getAccountNo(session));
		user.setMemberNo(SessionManager.getMemberNo(session));
		
		log.info("일일 식단 조회 요청: 사용자 계정 번호 {}, 회원 번호 {}", user.getAccountNo(), user.getMemberNo());
		
		List<Diet> dailyDiet = dietService.findDailyDietListByMemberInfo(user);
		Diet totalNutrient = dietService.getTotalNutrientFromDailyDietByMemberInfo(user);
		List<Nutrient> unitList = searchService.findNutrientList();
		List<NutritionStandard> nutritionStandard = userService.getNutritionStandardByMemberInfo(session);
		List<Double> recommendedIntake = new ArrayList<Double>();
		for(NutritionStandard ns : nutritionStandard) {
			recommendedIntake.add(ns.getIntakeRec());
		}
		List<Double> calculatedNutrients = NutritionCalculator.calculateStandardMinusTotalIntake(recommendedIntake, totalNutrient);
		System.out.println(calculatedNutrients);
		
		log.debug("나의 일일 권장량: {}", recommendedIntake);
		log.debug("나의 하루 섭취 식품: {}", dailyDiet);
		log.debug("등록 식품 영양성분 합계: {}", totalNutrient);
		
		model.addAttribute("dailyDiet", dailyDiet);
		model.addAttribute("totalNutrient", totalNutrient);
		model.addAttribute("unitList", unitList);
		model.addAttribute("calculatedNutrients", calculatedNutrients);
		
		return "diet/dailyDiet";
	}
	
	@RequestMapping("/diet/expectedDiet")
	public String expectedDiet(HttpSession session, Model model, User user, Diet diet) {

		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		
		log.info("예상 식단 조회 요청: 사용자 계정 번호 {}, 회원 번호 {}", accountNo, memberNo);
		
		List<Diet> expectedDiet = dietService.findExpectedDietListByMemberInfo(user);
		Diet expectedTotalNutrient = dietService.getExpectedTotalNutrientFromDailyDietByMemberInfo(user);
		List<Nutrient> unitList = searchService.findNutrientList();
		List<NutritionStandard> nutritionStandard = userService.getNutritionStandardByMemberInfo(session);
		List<Double> recommendedIntake = new ArrayList<Double>();
		for(NutritionStandard ns : nutritionStandard) {
			recommendedIntake.add(ns.getIntakeRec());
		}
		List<Double> calculatedNutrients = NutritionCalculator.calculateStandardMinusTotalIntake(recommendedIntake, expectedTotalNutrient);
		
		log.debug("나의 일일 권장량: {}", recommendedIntake);
		log.debug("예상 식단: {}", expectedDiet);
		log.debug("예상 식단 영양성분 합계: {}", expectedTotalNutrient);
		
		model.addAttribute("expectedDiet", expectedDiet);
		model.addAttribute("expectedTotalNutrient", expectedTotalNutrient);
		model.addAttribute("unitList", unitList);
		model.addAttribute("calculatedNutrients", calculatedNutrients);
		
		return "diet/expectedDiet";
	}
	
	@PostMapping("/deleteSelectedDailyDiet")
	public String deleteSelectedDailyDiet(int logNo) {
		log.info("선택된 일일 식단 삭제 요청: logNo {}", logNo);
		int result = dietService.deleteSelectedDailyDiet(logNo);
		log.info("삭제된 일일 식단 수: {}", result);
		
		return "redirect:/diet/dailyDiet";
	}
	
	@PostMapping("/deleteAllDailyDiet")
	public String deleteAllDailyDiet(User user, HttpSession session) {
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		
		log.info("전체 일일 식단 삭제 요청: 사용자 계정 번호 {}, 회원 번호 {}", accountNo, memberNo);
		int result = dietService.deleteAllDailyDiet(user);
		log.info("삭제된 전체 일일 식단 수: {}", result);
		
		return "redirect:/diet/dailyDiet";
	}
	
	@PostMapping("/deleteSelectedExpectedDiet")
	public String deleteSelectedExpectedDiet(int logNo) {
		log.info("선택된 예상 식단 삭제 요청: logNo {}", logNo);
		int result = dietService.deleteSelectedExpectedDiet(logNo);
		log.info("삭제된 예상 식단 수: {}", result);
		
		return "redirect:/diet/expectedDiet";
	}
	
	@PostMapping("/deleteAllExpectedDiet")
	public String deleteAllExpectedDiet(User user, HttpSession session) {
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		
		log.info("전체 예상 식단 삭제 요청: 사용자 계정 번호 {}, 회원 번호 {}", accountNo, memberNo);
		int result = dietService.deleteAllExpectedDiet(user);
		log.info("삭제된 전체 예상 식단 수: {}", result);
		
		return "redirect:/diet/expectedDiet";
	}
}
