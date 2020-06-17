package com.spring.ex.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.spring.ex.dto.Enterprise;


public class EnterpriseValidator implements Validator{
	@Override
	public boolean supports(Class<?> arg0) {
		return Enterprise.class.isAssignableFrom(arg0);
	}
	
	@Override//빈곳 체크
	public void validate(Object obj, Errors errors) {
		System.out.println("validate()");
		Enterprise enterprise = (Enterprise)obj;
		
		String name =enterprise.getName(); //기업이름
		if(name==null || name.trim().isEmpty()) {
			System.out.println("name is null empty");
			errors.rejectValue("name", "trouble");
		}
		
		String enterprise_id = enterprise.getEnterprise_id();//아이디 
		if( enterprise_id==null || enterprise_id.trim().isEmpty()) {
			System.out.println("enterprise_id is null");
			errors.rejectValue("enterprise_id", "trouble");
		}
		
		String password = enterprise.getPassword();//비밀번호
		if( password==null || password.trim().isEmpty()) {
			System.out.println("password is null");
			errors.rejectValue("password", "trouble");
		}
		
		String manager_phone = enterprise.getManager_phone();//담당자연락처
		if( manager_phone==null || manager_phone.trim().isEmpty()) {
			System.out.println("manager_phone is null");
			errors.rejectValue("manager_phone", "trouble");
		}
		
		String manager_name = enterprise.getManager_name();//담당자이름
		if( manager_name==null || manager_name.trim().isEmpty()) {
			System.out.println("manager_name is null");
			errors.rejectValue("manager_name", "trouble");
		}
		
		String business_number = enterprise.getBusiness_number();//사업자 번호 
		if( business_number==null || business_number.trim().isEmpty()) {
			System.out.println("business_number is null");
			errors.rejectValue("business_number", "trouble");
		}
		
		String category = enterprise.getCategory();//카테고리
		if( category==null || category.trim().isEmpty()) {
			System.out.println("category is null");
			errors.rejectValue("category", "trouble");
		}
	}
}
