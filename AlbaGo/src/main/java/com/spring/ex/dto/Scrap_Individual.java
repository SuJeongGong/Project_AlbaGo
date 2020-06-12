package com.spring.ex.dto;

public class Scrap_Individual {
	int scrap_id;//스크랩id
	int boardAnnounce_id;//공고글id
	String date;//스크랩한 날짜
	String individual_id;//개인회원 id
	String distinguish;//구별 - 지원인지, 스크랩인지
	
	
	
	public String getDistinguish() {
		return distinguish;
	}
	public void setDistinguish(String distinguish) {
		this.distinguish = distinguish;
	}
	public int getScrap_id() {
		return scrap_id;
	}
	public void setScrap_id(int scrap_id) {
		this.scrap_id = scrap_id;
	}
	public int getBoardAnnounce_id() {
		return boardAnnounce_id;
	}
	public void setBoardAnnounce_id(int boardAnnounce_id) {
		this.boardAnnounce_id = boardAnnounce_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getIndividual_id() {
		return individual_id;
	}
	public void setIndividual_id(String individual_id) {
		this.individual_id = individual_id;
	}
	
	
	
}
