package com.app.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

import com.app.service.diet.DietService;

public class DietTransferScheduler {
	
	@Autowired
	DietService dietService;
	
	//@Scheduled(cron  = "* * 5 * * *") //실제 서비스 시 사용될 cron (매일 새벽 5시)
	@Scheduled(cron  = "0 0 */3 * * *") //현재 3시간마다 작동
	public void dietTransferScheduler() {
		
		int result = dietService.saveDailyDietToTotalDiet();
		
		if(result > 0 ) {
			System.out.println(result + " 개 데이터 상태 변경 완료");
		} else {
			System.out.println("상태 변경된 데이터 없음");
		}
	}
	
}
