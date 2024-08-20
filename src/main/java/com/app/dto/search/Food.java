package com.app.dto.search;

import lombok.Data;

@Data
public class Food {

	int num;
	String foodCode;
    String foodName;
    String dataSortId;
    String dataSortName;
    int foodSortId;
    String foodSortName;
    int mainCategoryId;
    String mainCategoryName;
    int repFoodId;
    String repFoodName;
    int midCategoryId;
    String midCategoryName;
    int subCategoryId;
    String subCategoryName;
    int minCategoryId;
    String minCategoryName;
    String nutStandardAmount;
    double kcal;
    double water;
    double protein;
    double fat;
    double batch;
    double carbohydrate;
    double sugars;
    double dietaryFiber;
    double calcium;
    double ironContent;
    double phosphorus;
    double potassium;
    double sodium;
    double vitaminA;
    double retinol;
    double betaCarotene;
    double thiamine;
    double riboflavin;
    double niacin;
    double vitaminC;
    double vitaminD;
    double cholesterol;
    double saturatedFat;
    double transFat;
    int sourceCode;
    String sourceName;
    String refAmountOnce;
    String foodWeight;
    String manufacturingNumber;
    String manufacturingCompany;
    int dataGenerationMethodCode;
    String dataGenerationMethodName;
    String dataCreationDate;
    String dataBaseDate;
	
}