package com.app.service.search.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.search.SearchDAO;
import com.app.dto.search.Food;
import com.app.dto.search.Nutrient;
import com.app.dto.search.SearchCategory;
import com.app.dto.search.SearchInfo;
import com.app.service.search.SearchService;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchDAO searchDAO;

	@Override
	public List<SearchCategory> findDataSortList() {
		
		List<SearchCategory> searchCategoryList = searchDAO.findDataSortList();
		
		return searchCategoryList;
	}
	
	@Override
	public List<SearchCategory> findMainCategoryList() {
		
		List<SearchCategory> searchCategoryList = searchDAO.findMainCategoryList();
		
		return searchCategoryList;
	}
	
	@Override
	public int findFoodTotalItems(SearchInfo searchInfo) {
		
		int foodTotalItems = searchDAO.findFoodTotalItems(searchInfo);
		
		return foodTotalItems;
	}
	
	
	@Override
	public List<Food> findFoodList(SearchInfo searchInfo) {
		
		List<Food> FoodList = searchDAO.findFoodList(searchInfo);
		
		return FoodList;
	}

	@Override
	public Food findFoodByFoodCode(String foodCode) {
		
		Food food = searchDAO.findFoodByFoodCode(foodCode); 
		
		return food;
	}

	@Override
	public List<Nutrient> findNutrientList() {
		
		List<Nutrient> nutrientList = searchDAO.findNutrientList();
		
		return nutrientList;
	}

	

	
	
	
}
