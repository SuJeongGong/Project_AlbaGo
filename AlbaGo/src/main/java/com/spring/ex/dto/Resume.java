package com.spring.ex.dto;

import java.util.ArrayList;

public class Resume {
	String individual_id;//개인회원 id
	int resume_id;//이력서 id
	String place;//희망근무지
	String category;//희망 업종
	String salary_type;//희망 월급 종류
	int salary_amount;//희망 월급 금액
	String term;//희망 기간
	ArrayList<Career> career;//경력사항
	
	
	public ArrayList<Career> getCareer() {
		return career;
	}
	public void setCareer(ArrayList<Career> career) {
		this.career = career;
	}
	public int getResume_id() {
		return resume_id;
	}
	public void setResume_id(int resume_id) {
		this.resume_id = resume_id;
	}
	public String getplace() {
		return place;
	}
	public void setWorkplace(String place) {
		this.place = place;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSalary_type() {
		return salary_type;
	}
	public void setSalary_type(String salary_type) {
		this.salary_type = salary_type;
	}
	public int getSalary_amount() {
		return salary_amount;
	}
	public void setSalary_amount(int salary_amount) {
		this.salary_amount = salary_amount;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	
	
}
