package com.app.dto.mypage;

import lombok.Data;

@Data
public class TotalDietSearchCondition {  // TotalDietSearchCondition
	
	int accountNo; 
	int memberNo;
	String startDate;  // 8/5
 	String endDate;   //  8/5
	//String saveDate; //그날짜에 등록된
}
