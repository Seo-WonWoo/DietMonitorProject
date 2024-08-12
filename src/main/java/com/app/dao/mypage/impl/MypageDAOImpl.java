package com.app.dao.mypage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.mypage.MypageDAO;
import com.app.dto.mypage.TotalDiet;
import com.app.dto.mypage.TotalDietSearchCondition;

@Repository
public class MypageDAOImpl implements MypageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;


	@Override
	public List<TotalDiet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		
		List<TotalDiet> totalDietList = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySearchCondition", totalDietSearchCondition);
		
		return totalDietList;
	}


	@Override
	public List<TotalDiet> findTotalDietByAvg(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietList = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietByAvg", totalDietSearchCondition);
		
		return totalDietList;
	}


	@Override
	public List<TotalDiet> findTotalDietBySaveHistory(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietList = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySaveHistory", totalDietSearchCondition);
		return totalDietList;
	}


	@Override
	public List<TotalDiet> findTotalDietBySaveHistoryAvg(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietListAvg = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietBySaveHistoryAvg", totalDietSearchCondition);
		return totalDietListAvg;
	}


	@Override
	public List<TotalDiet> findTotalDietByMonthSum(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietListMonthSum = sqlSessionTemplate.selectList("mypage_mapper.findTotalDietByMonthSum", totalDietSearchCondition);
		return totalDietListMonthSum;
	}
	
	

}
