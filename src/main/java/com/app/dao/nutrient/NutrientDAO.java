package com.app.dao.nutrient;

import java.util.List;

import com.app.dto.nutrient.NutrientInfo;

public interface NutrientDAO {
	
	public List<NutrientInfo> findNutrientList();

	public NutrientInfo findNutrientInfoByFoodCode(String foodCode);

}
