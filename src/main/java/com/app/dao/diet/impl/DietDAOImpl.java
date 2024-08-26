package com.app.dao.diet.impl;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.diet.DietDAO;
import com.app.dto.diet.Diet;
import com.app.dto.user.User;

@Repository
public class DietDAOImpl implements DietDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public int addFoodToDailyDiet(Diet diet) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.insert("diet_mapper.addFoodToDailyDiet", diet);
		
		return result;
	}

	@Override
	public List<Diet> findDailyDietListByMemberInfo(User user) {
		// TODO Auto-generated method stub
		List<Diet> dailyDiet = 
				sqlSessionTemplate.selectList("diet_mapper.findDailyDietListByMemberInfo", user);
		
		return dailyDiet;
	}

	@Override
	public Diet getTotalNutrientFromDailyDietByMemberInfo(User user) {
		// TODO Auto-generated method stub
		Diet totalNutrient = sqlSessionTemplate.selectOne("diet_mapper."
						+ "getTotalNutrientFromDailyDietByMemberInfo", user);
		
		return totalNutrient;
	}

	@Override
	public int deleteSelectedDailyDiet(int logNo) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("diet_mapper.deleteSelectedDailyDiet", logNo);
		
		return result;
	}
	
	@Override
	public int deleteAllDailyDiet(User user) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("diet_mapper.deleteAllDailyDiet", user);
		
		return result;
	}
	
	@Override
	public int deleteSelectedExpectedDiet(int logNo) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("diet_mapper.deleteSelectedExpectedDiet", logNo);
		
		return result;
	}
	
	@Override
	public int deleteAllExpectedDiet(User user) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.delete("diet_mapper.deleteAllExpectedDiet", user);
		
		return result;
	}

	@Override
	public int saveDailyDietToTotalDiet() {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.update("diet_mapper.saveDailyDietToTotalDiet");
		
		return result;
	}
	
	@Override
	public int addFoodToExpectedDiet(Diet diet) {
		// TODO Auto-generated method stub
		int result = sqlSessionTemplate.insert("diet_mapper.addFoodToExpectedDiet", diet);
		
		return result;
	}

	@Override
	public List<Diet> findExpectedDietListByMemberInfo(User user) {
		// TODO Auto-generated method stub
		List<Diet> expectedDiet = 
				sqlSessionTemplate.selectList("diet_mapper.findExpectedDietListByMemberInfo", user);
		
		return expectedDiet;
	}

	@Override
	public Diet getExpectedTotalNutrientFromDailyDietByMemberInfo(User user) {
		// TODO Auto-generated method stub
		Diet expectedTotalNutrient = sqlSessionTemplate.selectOne("diet_mapper."
				+ "getExpectedTotalNutrientFromDailyDietByMemberInfo", user);

		return expectedTotalNutrient;
	}

	

	

}
