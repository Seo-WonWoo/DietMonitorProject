package com.app.service.mypage;

import java.util.List;

import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;

public interface MypageService {
	
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	public Diet findTotalDietByAvg(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietBySaveHistory(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietBySaveHistorySum(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietByMonthSum(TotalDietSearchCondition totalDietSearchCondition);
	
	public List<Diet> findTotalDietByStandard(TotalDietSearchCondition totalDietSearchCondition);
	
}
