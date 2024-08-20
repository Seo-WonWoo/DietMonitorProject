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
		
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		diet.setAccountNo(accountNo);
		diet.setMemberNo(memberNo);
		
		System.out.println("일일 식단 등록 데이터: " + diet);
		int result = dietService.addFoodToDailyDiet(diet);
		
		if(result > 0) {
			return "redirect:/diet/dailyDiet";
		} else {
			return "redirect:/search/foodDetail";
		}
	}
	
	@PostMapping("/addExpectedDiet")
	public String addExpectedDiet(Diet diet,HttpSession session) {
		
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		diet.setAccountNo(accountNo);
		diet.setMemberNo(memberNo);
		
		System.out.println("예상 식단 등록 데이터: " + diet);
		int result = dietService.addFoodToExpectedDiet(diet);
		
		System.out.println("예상 식단 등록 결과 : " + result);
		
		if(result > 0) {
			return "redirect:/diet/expectedDiet";
		} else {
			return "redirect:/search/foodDetail";
		}
	}
	
	@RequestMapping("/diet/dailyDiet")
	public String dailyDiet(HttpSession session, Model model, User user, Diet diet) {

		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		
		List<Diet> dailyDiet = dietService.findDailyDietListByMemberInfo(user);
		Diet totalNutrient = dietService.getTotalNutrientFromDailyDietByMemberInfo(user);
		List<Nutrient> unitList = searchService.findNutrientList();
		List<Double> recommendedIntake = dietService.getRecommendedIntakeByMemberInfo(user);
		List<Double> calculatedNutrients = NutritionCalculator.calculateStandardMinusTotalIntake(recommendedIntake, totalNutrient);
		
		System.out.println("나의 영양 일일 권장량 : " + recommendedIntake);
		System.out.println("나의 하루 섭취 식품 : " + dailyDiet);
		System.out.println("등록 식품 영양성분 함량 합계 : " + totalNutrient);
		
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
		
		List<Diet> expectedDiet = dietService.findExpectedDietListByMemberInfo(user);
		Diet expectedTotalNutrient = dietService.getExpectedTotalNutrientFromDailyDietByMemberInfo(user);
		List<Nutrient> unitList = searchService.findNutrientList();
		List<Double> recommendedIntake = dietService.getRecommendedIntakeByMemberInfo(user);
		List<Double> calculatedNutrients = NutritionCalculator.calculateStandardMinusTotalIntake(recommendedIntake, expectedTotalNutrient);
		
		System.out.println("나의 영양 일일 권장량 : " + recommendedIntake);
		System.out.println("나의 하루 섭취 식품,예상 섭취 식품 : " + expectedDiet);
		System.out.println("등록 식품 영양성분 함량 합계 : " + expectedTotalNutrient);
		
		model.addAttribute("expectedDiet", expectedDiet);
		model.addAttribute("expectedTotalNutrient", expectedTotalNutrient);
		model.addAttribute("unitList", unitList);
		model.addAttribute("calculatedNutrients", calculatedNutrients);
		
		return "diet/expectedDiet";
	}
	
	@PostMapping("/deleteSelectedDailyDiet")
	public String deleteSelectedDailyDiet(int logNo) {
		int result = dietService.deleteSelectedDailyDiet(logNo);
		System.out.println("deleteSelectedDailyDiet 실행 결과 개수 : " + result);
		
		return "redirect:/diet/dailyDiet";
	}
	
	@PostMapping("/deleteAllDailyDiet")
	public String deleteAllDailyDiet(User user, HttpSession session) {
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		int result = dietService.deleteAllDailyDiet(user);
		System.out.println("deleteAllDailyDiet 실행 결과 개수 : " + result);
		
		return "redirect:/diet/dailyDiet";
	}
	
	@PostMapping("/deleteSelectedExpectedDiet")
	public String deleteSelectedExpectedDiet(int logNo) {
		int result = dietService.deleteSelectedExpectedDiet(logNo);
		System.out.println("deleteSelectedExpectedDiet 실행 결과 개수 : " + result);
		
		return "redirect:/diet/expectedDiet";
	}
	
	@PostMapping("/deleteAllExpectedDiet")
	public String deleteAllExpectedDiet(User user, HttpSession session) {
		int accountNo = SessionManager.getAccountNo(session);
		int memberNo = SessionManager.getMemberNo(session);
		user.setAccountNo(accountNo);
		user.setMemberNo(memberNo);
		int result = dietService.deleteAllExpectedDiet(user);
		System.out.println("deleteAllExpectedDiet 실행 결과 개수 : " + result);
		
		return "redirect:/diet/expectedDiet";
	}
}
