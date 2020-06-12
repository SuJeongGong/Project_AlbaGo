package com.spring.ex.dto;

public class Advertising {
	int payment_id;//결제 id
	int advertising_id;//광고id
	int announce_id;//공고글id
	String startDate;//시작날짜
	String endDate;//끝날짜
	String title;//광고문구
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getAdvertising_id() {
		return advertising_id;
	}
	public void setAdvertising_id(int advertising_id) {
		this.advertising_id = advertising_id;
	}
	public int getAnnounce_id() {
		return announce_id;
	}
	public void setAnnounce_id(int announce_id) {
		this.announce_id = announce_id;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
