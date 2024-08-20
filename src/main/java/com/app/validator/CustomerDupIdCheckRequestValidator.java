package com.app.validator;

import org.springframework.validation.Errors; 
import org.springframework.validation.Validator;

import com.app.dto.user.CustomerDupEmailCheckRequest;

public class CustomerDupIdCheckRequestValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return CustomerDupEmailCheckRequest.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		CustomerDupEmailCheckRequest req = (CustomerDupEmailCheckRequest)target;
		
		
		if(req.getEmail() == null || req.getEmail().equals("")) {
			//errors.rejectValue(null, null, null);
		}
		
		if(req.getEmail().isBlank()) {
			
		}
	}
	
}
