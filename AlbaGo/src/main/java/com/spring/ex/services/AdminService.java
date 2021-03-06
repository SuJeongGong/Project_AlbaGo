package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.AdminDAO;
import com.spring.ex.dao.EnterpriseDAO;
import com.spring.ex.dto.BoardCommunity;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Enterprise;
import com.spring.ex.dto.BoardRecruit;
import com.spring.ex.dto.BoardResume;
import com.spring.ex.dto.Individual;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;
import com.spring.ex.dto.Recruit;
import com.spring.ex.dto.Resume;
import com.spring.ex.dto.Scrap_Individual;
import com.spring.ex.dto.Scrap_enterprise;
import com.spring.ex.dto.Volunteer;

@Service
public class AdminService {
	@Autowired
	AdminDAO adminDAO;

	public ArrayList<HashMap<String, Object>> selectRecentSales() {
		ArrayList<HashMap<String, Object>>  data = adminDAO.selectRecentSales();
		for(int i =0;i<=6;i++) {
			if(data.size()<=i) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("price", 0);
				String date = data.get(i-1).get("date").toString().split(" ")[0]+" "
						+String.valueOf(Integer.parseInt(data.get(i-1).get("date").toString().split(" ")[1])+1);
				System.out.println("date : " +date);
				map.put("date", date);
				data.add(data.size(), map);
			}
		}
		 return data;
	}

	public ArrayList<HashMap<String, Object>> selectItems() {
		ArrayList<HashMap<String, Object>>  data = adminDAO.selectItems();
		while(data.size()<4) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("count", 0);
			map.put("type", "");
			data.add(data.size(), map);
		}
		System.out.println("data    "+data);
		 return data;
	}

	// 일주일 매출액
	public int selectWeekTotal() {
		return adminDAO.selectWeekTotal();
	}

	/* ################################################## */
	// 임승재
	// 오늘 가입한 개인회원수
	public int select_TI_join() {
		return adminDAO.select_TI_join();
	}

	// 기업회원수
	public int selet_TE_join() {
		return adminDAO.selet_TE_join();
	}

	// 오늘 매출액
	public HashMap<String, Object> total_M() {
		return adminDAO.total_M();
	}

	// 총검색
	public ArrayList<HashMap<String, Object>> searchEnter(String search) {
		return adminDAO.searchEnter(search);
	}

	public ArrayList<HashMap<String, Object>> searchIndi(String search) {
		return adminDAO.searchIndi(search);
	}

	// 오늘쓴 공고 갯수
	public int today_Count() {
		return adminDAO.today_Count();
	}

	// 오늘쓴 인재 갯수
	public int today_Count_resume() {
		return adminDAO.today_Count_resume();
	}

	// 공수정
	// 아이템별로 기업결제 횟수 알려주는거
	public ArrayList<HashMap<String, Object>> selectCountItem_Enterprise(String item) {
		ArrayList<HashMap<String, Object>>  data = adminDAO.selectCountItem_Enterprise(item);
		
		while(data.size()<5) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("count", 0);
			map.put("type", item);
			data.add(data.size(), map);
		}
		 return data;
	}

	/* ################################################## */
	// 송원준

	// 매출 게시판
	public ArrayList<Payment> selectPaymentList() {
		return adminDAO.selectPaymentList();
	}

	// 젠체 매출
	public int all_totalsales() {
		return adminDAO.all_totalsales();
	}

	// 오늘 매출
	public int todaysales() {
		return adminDAO.todaysales();
	}

	// 주간 매출
	public int weeklysales() {
		return adminDAO.weeklysales();
	}

	// 매출 게시판 총검색
	public ArrayList<Payment> PaymentSearch(HashMap<String, Object> map) {
		return adminDAO.PaymentSearch(map);
	}
	// 매출 게시판 총검색
	public int PaymentSearchCount(HashMap<String, Object> map) {
		return adminDAO.PaymentSearchCount(map);
	}

}
