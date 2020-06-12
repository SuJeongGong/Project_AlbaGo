package com.spring.ex.dto;

public class Volunteer {
	int volunteer_id;//지원 id 키값
	int boardAnnounce_id;//공고글 id
	String enterprise_id;//기업id
	String date; //지원 날짜
	public int getVolunteer_id() {
		return volunteer_id;
	}
	public void setVolunteer_id(int volunteer_id) {
		this.volunteer_id = volunteer_id;
	}
	public int getBoardAnnounce_id() {
		return boardAnnounce_id;
	}
	public void setBoardAnnounce_id(int boardAnnounce_id) {
		this.boardAnnounce_id = boardAnnounce_id;
	}
	public String getEnterprise_id() {
		return enterprise_id;
	}
	public void setEnterprise_id(String enterprise_id) {
		this.enterprise_id = enterprise_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
