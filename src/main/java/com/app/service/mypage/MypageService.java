package com.app.service.mypage;

import java.util.List;

import com.app.dto.diet.Diet;
import com.app.dto.mypage.TotalDietSearchCondition;

public interface MypageService {
	
	/**
	 * 멤버 정보로 최근 일주일간 영양소별 평균치 호출
	 * @param TotalDietSearchCondition(검색조건 : 계정번호, 멤버번호) 
	 * @return Diet(영양소별 수치)
	 */
	public Diet findAvgWeeklyNutrientByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);
	
	/**
	 * 검색조건(사용자정보, 검색기간)에 해당하는 전체 식단내역 호출
	 * @param TotalDietSearchCondition(검색조건 : 계정번호, 멤버번호, 시작일, 종료일) 
	 * @return Diet(식품 상세정보, 영양소별 수치)
	 */
	public List<Diet> findTotalDietBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	/**
	 * 검색조건(사용자정보, 검색기간)에 해당하는 전체 식단내역의 영양소별 일자별 합산 수치 호출
	 * @param TotalDietSearchCondition(검색조건 : 계정번호, 멤버번호, 시작일, 종료일) 
	 * @return List<Diet>(식품 수량, 영양소별 수치)
	 */
	public List<Diet> getDailyTotalNutrientBySearchCondition(TotalDietSearchCondition totalDietSearchCondition);
	
	/**
	 * 멤버정보로 최근 한달간 일자별 영양소별 합산 수치 호출
	 * @param TotalDietSearchCondition(검색조건 : 계정번호, 멤버번호) 
	 * @return List<Diet>(영양소별 수치)
	 */
	public List<Diet> getDailyTotalNutrientForPast30DaysByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);
	
	/**
	 * 멤버정보로 일별 영양소 섭취 기준량 호출
	 * @param TotalDietSearchCondition(검색조건 : 계정번호, 멤버번호) 
	 * @return List<Diet>(영양소별 수치)
	 */
	public List<Diet> getNutrientStandardByMemberInfo(TotalDietSearchCondition totalDietSearchCondition);
	
}
