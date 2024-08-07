package com.app.controller.nutrient;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.app.dto.nutrient.NutrientInfo;
import com.app.service.nutrient.NutrientService;

@Controller
public class NutrientController {
	
	@Autowired
	NutrientService nutrientService;
	
	@GetMapping("/myInfoModify")
	public String myInfo(Model model) {
		
		NutrientInfo nutrientInfo = nutrientService.findNutrientInfoByFoodCode("P124-200020000-0359");
		System.out.println(nutrientInfo.getKcal());
		
		model.addAttribute("nutrientInfo", nutrientInfo);
		
//		List<NutrientInfo> nutrientInfoList = nutrientService.findNutrientList();
//		model.addAttribute("nutrientInfoList", nutrientInfoList);
		 
		
		return"/myInfoModify";
	}

}
