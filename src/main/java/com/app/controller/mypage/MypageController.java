package com.app.controller.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.dto.mypage.TotalDiet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.service.mypage.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	
	@GetMapping("/myInfo")
	public String myInfo(Model model) {
		
		TotalDietSearchCondition t1 = new TotalDietSearchCondition();
		
		t1.setAccountNo(1);
		t1.setMemberNo(2);
		t1.setStartDate("20240805");
		t1.setEndDate("20240809");

		System.out.println(t1);
		List<TotalDiet> totalDietList = mypageService.findTotalDietByAvg(t1);
		
		System.out.println(totalDietList);
		model.addAttribute("totalDietList", totalDietList);
		
		return"/mypage/myInfo";
	}
	
	@GetMapping("/myIntakeFood")
	public String myIntakeFood(Model model) {
		
		TotalDietSearchCondition t2 = new TotalDietSearchCondition();
		
		t2.setAccountNo(1);
		t2.setMemberNo(2);

		System.out.println(t2);
		List<TotalDiet> totalDietListMonthSum = mypageService.findTotalDietByMonthSum(t2);
		
		System.out.println(totalDietListMonthSum);
		model.addAttribute("totalDietListMonthSum", totalDietListMonthSum);
		
		return "/mypage/myIntakeFood";
	}
	
	@GetMapping("/mySaveHistory")
	public String mySaveHistory(Model model) {
		return "/mypage/test";
	}
	
	@PostMapping("/mySaveHistory")
	public String mySaveHistory(Model model, TotalDietSearchCondition t1) {
			
		t1.setAccountNo(1);
		t1.setMemberNo(2);
		
		System.out.println(t1);
		List<TotalDiet> totalDietList = mypageService.findTotalDietBySaveHistory(t1);
		List<TotalDiet> totalDietListAvg = mypageService.findTotalDietBySaveHistoryAvg(t1);
		
		System.out.println(totalDietList);
		model.addAttribute("totalDietList", totalDietList);
		model.addAttribute("totalDietListAvg", totalDietListAvg);
		
		//return "/mypage/mySaveHistory";
		return "/mypage/test";
	}
	
	
	
	
}
