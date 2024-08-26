package com.app.service.mypage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.mypage.MypageDAO;
import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.service.mypage.MypageService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MypageServiceImpl implements MypageService {

    @Autowired
    MypageDAO mypageDAO;

	@Override
	public Diet findAvgWeeklyNutrientByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		Diet AvgWeeklyNutrientByMemberInfo = mypageDAO.findAvgWeeklyNutrientByMemberInfo(totalDietSearchCondition);
		return AvgWeeklyNutrientByMemberInfo;
	}

	@Override
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> TotalDietBySearchCondition = mypageDAO.findTotalDietBySearchCondition(totalDietSearchCondition);
		return TotalDietBySearchCondition;
	}

	@Override
	public List<Diet> getDailyTotalNutrientBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> DailyTotalNutrientBySearchCondition = mypageDAO.getDailyTotalNutrientBySearchCondition(totalDietSearchCondition);
		return DailyTotalNutrientBySearchCondition;
	}

	@Override
	public List<Diet> getDailyTotalNutrientForPast30DaysByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> DailyTotalNutrientForPast30DaysByMemberInfo = mypageDAO.getDailyTotalNutrientForPast30DaysByMemberInfo(totalDietSearchCondition);
		return DailyTotalNutrientForPast30DaysByMemberInfo;
	}

	@Override
	public List<Diet> getNutrientStandardByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> NutrientStandardByMemberInfo = mypageDAO.getNutrientStandardByMemberInfo(totalDietSearchCondition);
		return NutrientStandardByMemberInfo;
	}
	
	

	

}
