package com.app.service.mypage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.mypage.MypageDAO;
import com.app.dto.mypage.TotalDiet;
import com.app.dto.mypage.TotalDietSearchCondition;
import com.app.service.mypage.MypageService;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;

	@Override
	public List<TotalDiet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition) {
		
		List<TotalDiet> totalDietList = mypageDAO.findTotalDietBySearchCondition(totalDietSearchCondition);
		
		return totalDietList;
	}

	@Override
	public List<TotalDiet> findTotalDietByAvg(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietList = mypageDAO.findTotalDietByAvg(totalDietSearchCondition);
		return totalDietList;
	}

	@Override
	public List<TotalDiet> findTotalDietBySaveHistory(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietList = mypageDAO.findTotalDietBySaveHistory(totalDietSearchCondition);
		return totalDietList;
	}

	@Override
	public List<TotalDiet> findTotalDietBySaveHistoryAvg(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietListAvg = mypageDAO.findTotalDietBySaveHistoryAvg(totalDietSearchCondition);
		return totalDietListAvg;
	}

	@Override
	public List<TotalDiet> findTotalDietByMonthSum(TotalDietSearchCondition totalDietSearchCondition) {
		// TODO Auto-generated method stub
		List<TotalDiet> totalDietListMonthSum = mypageDAO.findTotalDietByMonthSum(totalDietSearchCondition);
		return totalDietListMonthSum;
	}
	
	

	

}
