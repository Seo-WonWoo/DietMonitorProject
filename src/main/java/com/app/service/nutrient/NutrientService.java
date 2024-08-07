package com.app.service.nutrient;

import java.util.List;

import com.app.dto.nutrient.NutrientInfo;

public interface NutrientService {
	
	public List<NutrientInfo> findNutrientList();

	public NutrientInfo findNutrientInfoByFoodCode(String foodCode);

}
