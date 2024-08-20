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
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		
		List<Diet> totalDietList = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySearchCondition", totalDietSearchCondition);
		
		return totalDietList;
	}


	@Override
	public Diet findTotalDietByAvg(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		Diet totalDiet = sqlSessionTemplate.selectOne("mypage_mapper.findTotalDietByAvg", totalDietSearchCondition);
		
		return totalDiet;
	}


	@Override
	public List<Diet> findTotalDietBySaveHistory(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> totalDietList = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySaveHistory", totalDietSearchCondition);
		return totalDietList;
	}


	@Override
	public List<Diet> findTotalDietBySaveHistorySum(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> totalDietListSum = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySaveHistorySum", totalDietSearchCondition);
		return totalDietListSum;
	}


	@Override
	public List<Diet> findTotalDietByMonthSum(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> totalDietListMonthSum = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietByMonthSum", totalDietSearchCondition);
		return totalDietListMonthSum;
	}


	@Override
	public List<Diet> findTotalDietByStandard(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<Diet> findTotalDietByStandard = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietByStandard", totalDietSearchCondition);
		return findTotalDietByStandard;
	}
	
	

}
