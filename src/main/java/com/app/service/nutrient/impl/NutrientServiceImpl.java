package com.app.service.nutrient.impl;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.nutrient.NutrientDAO;
import com.app.dto.nutrient.NutrientInfo;
import com.app.service.nutrient.NutrientService;

@Service
public class NutrientServiceImpl implements NutrientService {
	
	@Autowired
	NutrientDAO nutrientDAO;
	
	@Override
	public List<NutrientInfo> findNutrientList() {
		// TODO Auto-generated method stub
		List<NutrientInfo> nutrientList = nutrientDAO.findNutrientList();
		
		return nutrientList;
	}

	@Override
	public NutrientInfo findNutrientInfoByFoodCode(String foodCode) {
		// TODO Auto-generated method stub
		NutrientInfo nutrientInfo = nutrientDAO.findNutrientInfoByFoodCode(foodCode);
		
		return nutrientInfo;
	}

}
