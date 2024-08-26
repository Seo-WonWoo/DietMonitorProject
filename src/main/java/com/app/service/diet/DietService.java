package com.app.service.diet;

import java.util.List; 

import com.app.dto.diet.Diet;
import com.app.dto.user.User;

public interface DietService {
	
	/**
	 * 음식의 영양정보를 일일 식단에 추가
	 * @param Diet(식단)
	 * @return int(식단에 추가된 행 갯수)
	 */
	int addFoodToDailyDiet(Diet diet);
	
	/**
	 * 사용자 정보를 통해 일일 식단 리스트 조회
	 * @param User(사용자 정보)
	 * @return List<Diet>(식단)
	 */
	List<Diet> findDailyDietListByMemberInfo(User user);

	/**
	 * 로그 번호를 통해 일일 식단 행 삭제
	 * @param int(로그 번호)
	 * @return int(식단에서 삭제된 행 갯수) 
	 */
	int deleteSelectedDailyDiet(int logNo);
	
	
	/**
	 * 사용자 정보를 통해 모든 일일 식단 행 삭제
	 * @param User(사용자 정보)
	 * @return int(식단에서 삭제된 행 갯수)
	 */
	int deleteAllDailyDiet(User user);
	
	/**
	 * 로그 번호를 통해 예상 식단 행 삭제
	 * @param int(로그 번호)
	 * @return int(식단에서 삭제된 행 갯수) 
	 */
	int deleteSelectedExpectedDiet(int logNo);
	
	/**
	 * 사용자 정보를 통해 모든 예상 식단 행 삭제
	 * @param User(사용자 정보)
	 * @return int(식단에서 삭제된 행 갯수)
	 */
	int deleteAllExpectedDiet(User user);

	/**
	 * 일일 식단의 state를 업데이트하여 종합 식단에 영구히 저장
	 * @return int(일일 식단에서 종합 식단으로 바뀐 행의 갯수)
	 */
	int saveDailyDietToTotalDiet();

	/**
	 * 사용자 정보를 통해 일일 식단 내에 포함된 영양소의 합계 조회
	 * @param User(사용자 정보)
	 * @return Diet(식단)
	 */
	Diet getTotalNutrientFromDailyDietByMemberInfo(User user);

	/**
	 * 음식의 영양정보를 예상 식단에 추가
	 * @param Diet(식단)
	 * @return int(식단에 추가된 행 갯수)
	 */
	int addFoodToExpectedDiet(Diet diet);
	
	/**
	 * 사용자 정보를 통해 예상 식단 리스트 조회
	 * @param User(사용자 정보)
	 * @return List<Diet>(식단)
	 */
	List<Diet> findExpectedDietListByMemberInfo(User user);

	/**
	 * 사용자 정보를 통해 예상 식단 내에 포함된 영양소의 합계 조회
	 * @param User(사용자 정보)
	 * @return Diet(식단)
	 */
	Diet getExpectedTotalNutrientFromDailyDietByMemberInfo(User user);


}
