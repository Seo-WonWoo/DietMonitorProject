package com.app.service.diet.impl;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.diet.DietDAO;
import com.app.dto.diet.Diet;
import com.app.dto.user.User;
import com.app.service.diet.DietService;

@Service
public class DietServiceImpl implements DietService{
	
	@Autowired
	DietDAO dietDAO;

	@Override
	public int addFoodToDailyDiet(Diet diet) {
		// TODO Auto-generated method stub
		int result = dietDAO.addFoodToDailyDiet(diet);
		
		return result;
	}

	@Override
	public List<Diet> findDailyDietListByMemberInfo(User user) {
		// TODO Auto-generated method stub
		List<Diet> dailyDiet = dietDAO.findDailyDietListByMemberInfo(user);
		
		return dailyDiet;
	}

	@Override
	public Diet getTotalNutrientFromDailyDietByMemberInfo(User user) {
		// TODO Auto-generated method stub
		Diet totalNutrient = dietDAO.getTotalNutrientFromDailyDietByMemberInfo(user);
		
		return totalNutrient;
	}

	@Override
	public int deleteSelectedDailyDiet(int logNo) {
		// TODO Auto-generated method stub
		int result = dietDAO.deleteSelectedDailyDiet(logNo);
		
		return result;
	}
	
	@Override
	public int deleteAllDailyDiet(User user) {
		// TODO Auto-generated method stub
		int result = dietDAO.deleteAllDailyDiet(user);
		
		return result;
	}
	
	@Override
	public int deleteSelectedExpectedDiet(int logNo) {
		// TODO Auto-generated method stub
		int result = dietDAO.deleteSelectedExpectedDiet(logNo);
		
		return result;
	}
	
	@Override
	public int deleteAllExpectedDiet(User user) {
		// TODO Auto-generated method stub
		int result = dietDAO.deleteAllExpectedDiet(user);
		
		return result;
	}

	@Override
	public int saveDailyDietToTotalDiet() {
		// TODO Auto-generated method stub
		int result = dietDAO.saveDailyDietToTotalDiet();
		
		return result;
	}

	@Override
	public List<Double> getRecommendedIntakeByMemberInfo(User user) {
		// TODO Auto-generated method stub
		List<Double> result = dietDAO.getRecommendedIntakeByMemberInfo(user);
		
		return result;
	}

	@Override
	public int addFoodToExpectedDiet(Diet diet) {
		// TODO Auto-generated method stub
		int result = dietDAO.addFoodToExpectedDiet(diet);
		
		return result;
	}

	@Override
	public List<Diet> findExpectedDietListByMemberInfo(User user) {
		// TODO Auto-generated method stub
		List<Diet> expectedDiet = dietDAO.findExpectedDietListByMemberInfo(user);
		
		return expectedDiet;
	}

	@Override
	public Diet getExpectedTotalNutrientFromDailyDietByMemberInfo(User user) {
		// TODO Auto-generated method stub
		Diet expectedTotalNutrient = dietDAO.getExpectedTotalNutrientFromDailyDietByMemberInfo(user);

		return expectedTotalNutrient;
	}



}
