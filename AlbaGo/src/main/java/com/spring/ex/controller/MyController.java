package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@RequestMapping("/main")
	public String main() {
		return "/main";
	}
	@RequestMapping("/test")
	public String test() {
		return "/test";
	}
	@RequestMapping("/admin/AccountList_enterprise")
	public String AccountList_enterprise() {
		return "/admin/AccountList_enterprise";
	}
	@RequestMapping("/admin/AccountList_individual")
	public String AccountList_individual() {
		return "/admin/AccountList_individual";
	}
	@RequestMapping("/admin/CommunityList")
	public String CommunityList() {
		return "/admin/CommunityList";
	}
	@RequestMapping("/admin/Manager_enterprise")
	public String Manager_enterprise() {
		return "/admin/Manager_enterprise";
	}
	@RequestMapping("/admin/Manager_Individual")
	public String Manager_Individual() {
		return "/admin/Manager_Individual";
	}
	@RequestMapping("/admin/list_product")
	public String list_product() {
		return "/admin/list_product";
	}
	@RequestMapping("/Board_recruit")
	public String Board_recruit() {
		return "/Board_recruit";
	}
	
	@RequestMapping("/individual/Account_Individual")
	public String Account_Individual() {
		return "/individual/Account_Individual";
	}
	
	@RequestMapping("/Human_resource_info")
	public String Human_resource_info() {
		return "/Human_resource_info";
	}
	@RequestMapping("/Support_status")
	public String Support_status() {
		return "/Support_status";
	}
	@RequestMapping("/find_id")
	public String find_id() {
		return "/find_id";
	}
	
}
