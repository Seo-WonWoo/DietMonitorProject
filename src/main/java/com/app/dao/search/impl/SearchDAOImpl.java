package com.app.dao.search.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.dao.search.SearchDAO;
import com.app.dto.search.Food;
import com.app.dto.search.Nutrient;
import com.app.dto.search.SearchCategory;
import com.app.dto.search.SearchInfo;

@Repository
public class SearchDAOImpl implements SearchDAO{

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<SearchCategory> findDataSortList() {
		
		List<SearchCategory> searchCategoryList = sqlSessionTemplate.selectList("search_mapper.findDataSortList");
		
		return searchCategoryList;
	}
	
	@Override
	public List<SearchCategory> findMainCategoryList() {
		
		List<SearchCategory> searchCategoryList = sqlSessionTemplate.selectList("search_mapper.findMainCategoryList");
		
		return searchCategoryList;
	}
	
	@Override
	public int findFoodTotalItems(SearchInfo searchInfo) {
		
		int foodTotalItems = sqlSessionTemplate.selectOne("search_mapper.findfoodTotalItems", searchInfo);
		
		return foodTotalItems;
	}
	
	@Override
	public List<Food> findFoodList(SearchInfo searchInfo) {
		
		List<Food> FoodList = sqlSessionTemplate.selectList("search_mapper.findFoodList", searchInfo);
		
		return FoodList;
	}

	@Override
	public Food findFoodByFoodCode(String foodCode) {
		
		Food food = sqlSessionTemplate.selectOne("search_mapper.findFoodByFoodCode", foodCode);
		
		return food;
	}

	@Override
	public List<Nutrient> findNutrientList() {
		
		List<Nutrient> nutrientList = sqlSessionTemplate.selectList("search_mapper.findNutrientList");
		
		return nutrientList;
	}

	

	
	
	
}
