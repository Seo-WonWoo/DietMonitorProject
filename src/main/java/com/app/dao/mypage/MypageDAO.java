package com.app.dao.mypage;

import java.util.List;

import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.dto.search.Food;

public interface MypageDAO {
	
	public Diet findAvgWeeklyNutrientByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> getDailyTotalNutrientBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> getDailyTotalNutrientForPast30DaysByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> getNutrientStandardByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);

}
