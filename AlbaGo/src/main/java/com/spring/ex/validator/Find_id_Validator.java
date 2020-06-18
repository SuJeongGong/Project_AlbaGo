package com.spring.ex.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.spring.ex.dto.Individual;

public class Find_id_Validator implements Validator{
	@Override
	public boolean supports(Class<?> arg0) {
		return Individual.class.isAssignableFrom(arg0);
	}
	@Override//빈곳 체크
	public void validate(Object obj, Errors errors) {
		System.out.println("validate()");
		Individual find_id = (Individual)obj;
		
		String name =find_id.getName(); //개인회원이름
		if(name==null || name.trim().isEmpty()) {
			System.out.println("name is null empty");
			errors.rejectValue("name", "trouble");
		}
		
		String phone = find_id.getPhone();//개인 연락처
		if( phone==null || phone.trim().isEmpty()) {
			System.out.println("phone is null");
			errors.rejectValue("phone", "trouble");
		}
	}	
}
