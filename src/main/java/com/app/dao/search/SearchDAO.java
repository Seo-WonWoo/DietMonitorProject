package com.app.dao.search;

import java.util.List;

import com.app.dto.search.Food;
import com.app.dto.search.Nutrient;
import com.app.dto.search.SearchCategory;
import com.app.dto.search.SearchInfo;

public interface SearchDAO {

	public List<SearchCategory> findDataSortList();
	
	public List<SearchCategory> findMainCategoryList();
	
	public int findFoodTotalItems(SearchInfo searchInfo);
	
	public List<Food> findFoodList(SearchInfo searchInfo);
	
	public Food findFoodByFoodCode(String foodCode);  
	
	public List<Nutrient> findNutrientList();
}
