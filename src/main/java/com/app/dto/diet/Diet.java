package com.app.dto.diet;

import lombok.Data;

@Data
public class Diet {
	
	int logNo;
	int accountNo;
	int memberNo;
	String saveDate;
	String foodCode;
	String foodName;
	String mainCategoryName;
	String midCategoryName;
	int foodIntake;
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
    int state;
    
}
