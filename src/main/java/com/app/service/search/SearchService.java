package com.app.service.search;

import java.util.List;

import com.app.dto.search.Food;
import com.app.dto.search.Nutrient;
import com.app.dto.search.SearchCategory;
import com.app.dto.search.SearchInfo;

public interface SearchService {

	/**
	 * 식품분류 리스트 호출
	 * @return List<SearchCategory>(식품분류 리스트)
	 */
	public List<SearchCategory> findDataSortList();
	
	/**
	 * 메인카테고리 리스트 호출
	 * @return List<SearchCategory>(메인카테고리 리스트)
	 */
	public List<SearchCategory> findMainCategoryList();
	
	/**
	 * 검색정보(검색항목, 페이지)에 해당하는 식품 리스트 갯수 호출
	 * @param SearchInfo(검색항목, 페이지)
	 * @return int(식품 리스트 갯수)
	 */
	public int findFoodTotalItems(SearchInfo searchInfo);
	
	/**
	 * 검색정보(검색항목, 페이지)에 해당하는 식품 리스트 호출
	 * @param SearchInfo(검색항목, 페이지)
	 * @return List<Food>(식품 리스트)
	 */
	public List<Food> findFoodList(SearchInfo searchInfo);
	
	/**
	 * 푸드코드에 해당하는 식품 호출
	 * @param String(foodCode)
	 * @return Food(식품)
	 */
	public Food findFoodByFoodCode(String foodCode);

	/**
	 * 영양소 리스트 호출
	 * @return List<Nutrient>(영양소 리스트)
	 */
	public List<Nutrient> findNutrientList();
}
