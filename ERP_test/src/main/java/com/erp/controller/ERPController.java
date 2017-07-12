package com.erp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.erp.domain.LoginVo;
import com.erp.service.LoginService;

@Controller
public class ERPController {
	
	@Inject
	private LoginService service;

	
	@RequestMapping(value="/search_form", method=RequestMethod.GET)
	public String staff_search_form()throws Exception{

		return "staff_search_form";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(LoginVo vo)throws Exception{
		System.out.println("controller");
		service.insert_Pro(vo);
		
		return "home";
	}
	
	@RequestMapping(value="/staff_input_form", method=RequestMethod.GET)
	public String staff_input_form()throws Exception{

		return "staff_input_form";
	}
}
