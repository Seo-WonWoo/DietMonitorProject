package com.app.dao.nutrient.impl;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.nutrient.NutrientDAO;
import com.app.dto.nutrient.NutrientInfo;

@Repository
public class NutrientDAOImpl implements NutrientDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<NutrientInfo> findNutrientList() {
		// TODO Auto-generated method stub
		List<NutrientInfo> nutrientList = sqlSessionTemplate.selectList("nutrient_mapper.findNutrientList");
		return nutrientList;
	}

	@Override
	public NutrientInfo findNutrientInfoByFoodCode(String foodCode) {
		// TODO Auto-generated method stub
		NutrientInfo nutrientInfo = sqlSessionTemplate.selectOne("nutrient_mapper.findNutrientInfoByFoodCode", foodCode);
		
		return nutrientInfo;
	}

}