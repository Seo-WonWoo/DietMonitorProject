package com.app.dao.mypage;

import java.util.List;

import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.dto.search.Food;

public interface MypageDAO {
	
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	public Diet findTotalDietByAvg(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietBySaveHistory(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietBySaveHistorySum(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietByMonthSum(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietByStandard(TotalDietSearchCondition totalDietSearchCondition);

}
