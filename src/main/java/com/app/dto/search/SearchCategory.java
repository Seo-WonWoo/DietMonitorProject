package com.app.dto.search;

import lombok.Data;

@Data
public class SearchCategory {

	String dataSortId;
    String dataSortName;
    int mainCategoryId;
    String mainCategoryName;
    String manufacturingNumber;
    String manufacturingCompany;    
    int repFoodId;
    String repFoodName;
}
