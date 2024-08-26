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

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@Autowired
	UserService userService;	
	
	@GetMapping("/foodSearch")
	public String foodSearch(Model model, SearchInfo searchInfo) {
		log.info("음식 검색 페이지 요청");
		
		//검색정보(키워드/식품구분/대분류 등) 반환
		model.addAttribute("searchInfo", searchInfo);
		
		//검색항목(식품구분) 호출 및 반환
		List<SearchCategory> dataSortList = searchService.findDataSortList();		
		model.addAttribute("dataSortList", dataSortList);
		log.debug("데이터 정렬 리스트: {}", dataSortList);
		
		//검색항목(메인카테고리) 호출 및 반환
		List<SearchCategory> mainCategoryList = searchService.findMainCategoryList();		
		model.addAttribute("mainCategoryList", mainCategoryList);
		log.debug("메인 카테고리 리스트: {}", mainCategoryList);
		
		return "search/foodSearch";
	}
	
	@ResponseBody
	@RequestMapping("/foodSearchList")
	public SearchResult foodSearchList(@RequestBody SearchInfo searchInfo){
		log.info("음식 검색 결과 요청. 검색 정보: {}", searchInfo);
		
		//페이지 정보 산출(매개변수로 검색항목 결과 리스트 갯수 호출)
		Page page = PageManager.pageCalculate(searchInfo.getPage().getCurrentPage(),
					searchInfo.getPage().getItemsPerPage(), searchService.findFoodTotalItems(searchInfo));
		searchInfo.setPage(page); //페이지 산출정보 검색정보 내 저장
		log.debug("페이지 정보 계산 완료: {}", page);
		
		//검색정보(검색항목, 페이지)에 해당하는 식품리스트 호출
		List<Food> foodList = searchService.findFoodList(searchInfo);
		log.debug("검색된 음식 리스트: {}", foodList);
		
		//식품리스트 호출결과 및 페이지 정보 반환
		SearchResult searchResult = new SearchResult();
		searchResult.setPage(page);
		searchResult.setFoodList(foodList);
		log.info("음식 검색 결과 반환");
		
		return searchResult;
	}
	
	@GetMapping("/foodDetail/{foodCode}")
	public String foodDetail(@PathVariable String foodCode, Model model, HttpSession session) {
		log.info("음식 상세 정보 요청. 음식 코드: {}", foodCode);
		
		//식품코드에 해당하는 식품 호출 및 반환
		Food food = searchService.findFoodByFoodCode(foodCode);
		model.addAttribute("food", food);

		//영양소 리스트 호출 및 반환
		List<Nutrient> nutrientList = searchService.findNutrientList();
		log.debug("영양소 리스트: {}", nutrientList);
		model.addAttribute("nutrientList", nutrientList);
		
		List<NutritionStandard> nc = null; //영양소별 섭취기준량 리스트 객체 생성
		
		
		try { //세션 로그정보(계정번호,멤버번호)에 해당하는 영양소별 섭취기준량 호출
			nc = userService.getNutritionStandardByMemberInfo(session);
			log.debug("영양 기준 정보: {}", nc);
			
		} catch(NullPointerException e) { //로그아웃시 널포인트 예외 발생
			
			log.error("세션에서 영양 기준 정보를 가져오는 중 오류 발생", e);
		}
		
		//영양소별 섭취기준량 정보 반환
		model.addAttribute("nc", nc);
		
		return "search/foodDetail";
	}
}
