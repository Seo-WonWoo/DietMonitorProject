package com.app.dao.mypage.impl;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.mypage.MypageDAO;
import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public Diet findAvgWeeklyNutrientByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		Diet AvgWeeklyNutrientByMemberInfo = sqlSessionTemplate.selectOne("mypage_mapper.findAvgWeeklyNutrientByMemberInfo", totalDietSearchCondition);
		
		return AvgWeeklyNutrientByMemberInfo;
	}


	@Override
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> TotalDietBySearchCondition = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySearchCondition", totalDietSearchCondition);
		return TotalDietBySearchCondition;
	}


	@Override
	public List<Diet> getDailyTotalNutrientBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> DailyTotalNutrientBySearchCondition = sqlSessionTemplate.selectList("mypage_mapper.getDailyTotalNutrientBySearchCondition", totalDietSearchCondition);
		return DailyTotalNutrientBySearchCondition;
	}


	@Override
	public List<Diet> getDailyTotalNutrientForPast30DaysByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> DailyTotalNutrientForPast30DaysByMemberInfo = sqlSessionTemplate.selectList("mypage_mapper.getDailyTotalNutrientForPast30DaysByMemberInfo", totalDietSearchCondition);
		return DailyTotalNutrientForPast30DaysByMemberInfo;
	}


	@Override
	public List<Diet> getNutrientStandardByMemberInfo(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> NutrientStandardByMemberInfo = sqlSessionTemplate.selectList("mypage_mapper.getNutrientStandardByMemberInfo", totalDietSearchCondition);
		return NutrientStandardByMemberInfo;
	}
	
	

}
