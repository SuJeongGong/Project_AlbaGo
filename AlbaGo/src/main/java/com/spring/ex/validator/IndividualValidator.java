package com.spring.ex.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.Individual;

public class IndividualValidator implements Validator{
	@Override
	public boolean supports(Class<?> arg0) {
		return Enterprise.class.isAssignableFrom(arg0);
	}
	
	@Override//빈곳 체크
	public void validate(Object obj, Errors errors) {
		System.out.println("validate()");
		Individual individual = (Individual)obj;
		
		String gender =individual.getGender(); //성별
		if(gender==null || gender.trim().isEmpty()) {
			System.out.println("gender is null empty");
			errors.rejectValue("gender", "trouble");
		}
		
		String name =individual.getName(); //회원이름
		if(name==null || name.trim().isEmpty()) {
			System.out.println("name is null empty");
			errors.rejectValue("name", "trouble");
		}
		
		String individual_id = individual.getIndividual_id();//아이디 
		if( individual_id==null || individual_id.trim().isEmpty()) {
			System.out.println("individual_id is null");
			errors.rejectValue("individual_id", "trouble");
		}
		
		String password = individual.getPassword();//비밀번호
		if( password==null || password.trim().isEmpty()) {
			System.out.println("password is null");
			errors.rejectValue("password", "trouble");
		}
		
		String birth = individual.getBirth();//년
		if( birth==null || birth.trim().isEmpty()) {
			System.out.println("birth is null");
			errors.rejectValue("birth", "trouble");
		}
		
//		String individual_month = individual.getManager_name();//월
//		if( individual_month==null || individual_month.trim().isEmpty()) {
//			System.out.println("individual_month is null");
//			errors.rejectValue("individual_month", "trouble");
//		}
//		
//		String individual_day = individual.getBusiness_number();//일
//		if( individual_day==null || individual_day.trim().isEmpty()) {
//			System.out.println("individual_day is null");
//			errors.rejectValue("individual_day", "trouble");
//		}
		
		String phone = individual.getPhone();//연락처
		if( phone==null || phone.trim().isEmpty()) {
			System.out.println("phone is null");
			errors.rejectValue("phone", "trouble");
		}
		
		String education = individual.getEducation();//연락처
		if( education==null || education.trim().isEmpty()) {
			System.out.println("education is null");
			errors.rejectValue("education", "trouble");
		}
	}
	
}
