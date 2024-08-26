package com.app.dao.diet;

import java.util.List; 

import com.app.dto.diet.Diet;
import com.app.dto.user.User;

public interface DietDAO {

	int addFoodToDailyDiet(Diet diet);

	List<Diet> findDailyDietListByMemberInfo(User user);

	int deleteSelectedDailyDiet(int logNo);
	
	int deleteAllDailyDiet(User user);
	
	int deleteSelectedExpectedDiet(int logNo);
	
	int deleteAllExpectedDiet(User user);

	int saveDailyDietToTotalDiet();

	Diet getTotalNutrientFromDailyDietByMemberInfo(User user);

	int addFoodToExpectedDiet(Diet diet);

	List<Diet> findExpectedDietListByMemberInfo(User user);

	Diet getExpectedTotalNutrientFromDailyDietByMemberInfo(User user);

	

	

}
