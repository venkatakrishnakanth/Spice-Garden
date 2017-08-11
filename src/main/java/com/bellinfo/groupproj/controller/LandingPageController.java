package com.bellinfo.groupproj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bellinfo.groupproj.model.User_table;


@Controller
public class LandingPageController {
	
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String landingPage(Model model){
		User_table user = new User_table();
		model.addAttribute("user",user);
		return "home";
	}
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String indexPage(Model model){
		User_table user = new User_table();
		model.addAttribute("user",user);
		return "home";
	}

}
