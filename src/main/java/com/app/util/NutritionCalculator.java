package com.app.util;

import java.util.ArrayList;
import java.util.List;

import com.app.dto.diet.Diet;

public class NutritionCalculator {
	
	private static final double NO_REC_OR_MAX_INTAKE = 9999;
	
	public static List<Double> calculateStandardMinusTotalIntake(List<Double> recommendedIntake, 
															Diet totalNutrient){
		
		List<Double> calculatedNutrients = new ArrayList<Double>();
		
		//현재 데이터
		calculatedNutrients.add(totalNutrient.getKcal());
		calculatedNutrients.add(totalNutrient.getWater());
		calculatedNutrients.add(totalNutrient.getProtein());
		calculatedNutrients.add(totalNutrient.getFat());
		calculatedNutrients.add(totalNutrient.getCarbohydrate());
		calculatedNutrients.add(totalNutrient.getSugars());
		calculatedNutrients.add(totalNutrient.getDietaryFiber());
		calculatedNutrients.add(totalNutrient.getCalcium());
		calculatedNutrients.add(totalNutrient.getIronContent());
		calculatedNutrients.add(totalNutrient.getPhosphorus());
		calculatedNutrients.add(totalNutrient.getPotassium());
		calculatedNutrients.add(totalNutrient.getSodium());
		calculatedNutrients.add(totalNutrient.getVitaminA());
		calculatedNutrients.add(totalNutrient.getRetinol());
		calculatedNutrients.add(totalNutrient.getBetaCarotene());
		calculatedNutrients.add(totalNutrient.getThiamine());
		calculatedNutrients.add(totalNutrient.getRiboflavin());
		calculatedNutrients.add(totalNutrient.getNiacin());
		calculatedNutrients.add(totalNutrient.getVitaminC());
		calculatedNutrients.add(totalNutrient.getVitaminD());
		calculatedNutrients.add(totalNutrient.getCholesterol());
		calculatedNutrients.add(totalNutrient.getSaturatedFat());
		calculatedNutrients.add(totalNutrient.getTransFat());
		
		//계산된 데이터
		for(int i=0; i<calculatedNutrients.size(); i++) {
			if (recommendedIntake.get(i) == NO_REC_OR_MAX_INTAKE) {
		        calculatedNutrients.set(i, 0.0);
		    } else {
		    	double result = calculatedNutrients.get(i) - recommendedIntake.get(i);
				calculatedNutrients.set(i, result);
		    }
		}
		return calculatedNutrients;
	}
}