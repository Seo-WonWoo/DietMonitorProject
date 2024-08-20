package com.app.dto.user;

import lombok.Data;

@Data
public class NutritionStandard {
	int nutrientId;
	int genderId;
	int ageMin;
	int ageMax;
	double intakeRec;
	double intakeMax;
}
