package com.app.controller.search;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.dto.search.Food;
import com.app.dto.search.Nutrient;
import com.app.dto.search.Page;
import com.app.dto.search.SearchCategory;
import com.app.dto.search.SearchInfo;
import com.app.dto.search.SearchResult;
import com.app.dto.user.NutritionStandard;
import com.app.service.search.SearchService;
import com.app.service.user.UserService;
import com.app.util.page.PageManager;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@Autowired
	UserService userService;	
	
	@GetMapping("/foodSearch")
	public String foodSearch(Model model, SearchInfo searchInfo) {
		
		model.addAttribute("searchInfo", searchInfo);
		
		List<SearchCategory> dataSortList = searchService.findDataSortList();		
		model.addAttribute("dataSortList", dataSortList);
		
		List<SearchCategory> mainCategoryList = searchService.findMainCategoryList();		
		model.addAttribute("mainCategoryList", mainCategoryList);
		
		return "search/foodSearch";
	}
	
	@ResponseBody
	@RequestMapping("/foodSearchList")
	public SearchResult foodSearchList(@RequestBody SearchInfo searchInfo){
		
		Page page = PageManager.pageCalculate(searchInfo.getPage().getCurrentPage(),
					searchInfo.getPage().getItemsPerPage(), searchService.findFoodTotalItems(searchInfo));
		searchInfo.setPage(page);
		List<Food> foodList = searchService.findFoodList(searchInfo);
		
		SearchResult searchResult = new SearchResult();
		searchResult.setPage(page);
		searchResult.setFoodList(foodList);
		
		return searchResult;
	}
	
	@GetMapping("/foodDetail/{foodCode}")
	public String foodDetail(@PathVariable String foodCode, Model model, HttpSession session) {
		
		Food food = searchService.findFoodByFoodCode(foodCode);
		model.addAttribute("food", food);
		
		List<Nutrient> nutrientList = searchService.findNutrientList();
		model.addAttribute("nutrientList", nutrientList);
		
		List<NutritionStandard> nc = null;
		
		try {
			nc = userService.getNutritionStandardByMemberInfo(session);
			System.out.println(nc);
		} catch(NullPointerException e) {
			System.out.println("섹션 오류");	
		}
		model.addAttribute("nc", nc);
		
		return "search/foodDetail";
	}
}
