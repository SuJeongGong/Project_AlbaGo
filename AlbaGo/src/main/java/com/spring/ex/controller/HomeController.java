package com.spring.ex.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.DispatcherServlet;

import com.spring.ex.dao.EnterpriseDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	@Autowired
//	EnterpriseDAO enterpriseDAO;
//
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Model model) {
//		HashMap<String, Object> map = new HashMap<String, Object>(){{
//			put("param1", 1);
//			put("param2", "dlwodyd");
//		}};
//		System.out.println(enterpriseDAO.selectNow(map));
//		return "home";
//	}
	
}
