package com.app.dto.search;

import java.util.List;

import lombok.Data;

@Data
public class SearchInfo {

	String searchKeyword;
	
	String dataSortId;    
   
    List<String> mainCategoryName;
      
    List<String> manufacturingCompany; 
     
    List<String> repFoodName;
    
    Page page;
}
