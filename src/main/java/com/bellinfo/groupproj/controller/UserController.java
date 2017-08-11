package com.bellinfo.groupproj.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bellinfo.groupproj.dao.RepoSave;
import com.bellinfo.groupproj.dao.RepoSaveImpl;
import com.bellinfo.groupproj.email.EmailSend;
import com.bellinfo.groupproj.model.User_Orders;
import com.bellinfo.groupproj.model.User_table;
import com.bellinfo.groupproj.model.items_prices;
import com.bellinfo.groupproj.service.RepoService;

@Controller

public class UserController {

	/*
	 * @RequestMapping(method = RequestMethod.GET) public String userData(Model
	 * model) {
	 * 
	 * model.addAttribute("message", "Welcome...."); return "reg";
	 * 
	 * }
	 */

	
	
	@Autowired
	private RepoService repoService;
	
	@Autowired
	private EmailSend emailSend;

	private User_table main_user = null;

	@RequestMapping(name = "/user_reg", method = RequestMethod.POST)
	public String postUserData(@Valid @ModelAttribute User_table user, BindingResult result, RedirectAttributes attr, Model model) {

		try{
		if (result.hasErrors()) {
		    model.addAttribute("org.springframework.validation.BindingResult.user", result);
		    model.addAttribute("user", user);			
			System.out.println(result.toString());
			return "reg";
		}

		String text = "Hey Welcome to MVC world....." + user.getFirstName();

		model.addAttribute("message", text);

		
		repoService.savetheobject(user);
		emailSend.sendEmail(user.getEmail());
		
		
		return "login";}
		catch(Exception e) {
			return "reg";
		}

	}

	@RequestMapping("/bill")
	public String userOrder(HttpServletRequest request, HttpServletResponse response, Model model) {

		int bill = 0;
		ArrayList<items_prices> ordered_items = new ArrayList<items_prices>();
		
		items_prices item=null;
		String thai = request.getParameter("Thai");
		String parmesan = request.getParameter("Parmesan");
		String samosa = request.getParameter("samosa");
		String chicken_biriyani = request.getParameter("chicken_biriyani");
		String mutton_biriyani = request.getParameter("mutton_biriyani");
		String veg_biriyani = request.getParameter("veg_biriyani");
		String idly = request.getParameter("idly");
		String dosa = request.getParameter("dosa");
		String vada = request.getParameter("vada");
		String pongal = request.getParameter("pongal");
		String puri = request.getParameter("puri");
		String chapathi = request.getParameter("chapathi");
		String upma = request.getParameter("upma");
		String veg_noodles = request.getParameter("veg_noodles");
		String chicken_noodles = request.getParameter("chicken_noodles");
		String coke = request.getParameter("coke");
		String pepsi = request.getParameter("pepsi");
		String sprite = request.getParameter("sprite");
		String mountain_dew = request.getParameter("mountain_dew");

		if (thai != null) {
			
			savethis("thai", item, bill, ordered_items, request);

		}
		if (parmesan != null) {bill=savethis("parmesan", item, bill, ordered_items, request);}
		if (samosa != null) {bill=savethis("samosa", item, bill, ordered_items, request);}
		if (chicken_biriyani != null) {bill=savethis("chicken biriyani", item, bill, ordered_items, request);}
		if (mutton_biriyani != null) {bill=savethis("mutton biriyani", item, bill, ordered_items, request);}
		if (veg_biriyani != null) {bill=savethis("veg biriyani", item, bill, ordered_items, request);}
		if (idly != null) {bill=savethis("idly", item, bill, ordered_items, request);}
		if (dosa != null) {bill=savethis("dosa", item, bill, ordered_items, request);}
		if (vada != null) {bill=savethis("vada", item, bill, ordered_items, request);}

		if (pongal != null) {bill=savethis("pongal", item, bill, ordered_items, request);}

		if (puri != null) {bill=savethis("puri", item, bill, ordered_items, request);}

		if (chapathi != null) {bill=savethis("chapathi", item, bill, ordered_items, request);}

		if (upma != null) {bill=savethis("upma", item, bill, ordered_items, request);}

		if (veg_noodles != null) {bill=savethis("veg noodles", item, bill, ordered_items, request);}

		if (chicken_noodles != null) {bill=savethis("chicken noodles", item, bill, ordered_items, request);}

		if (coke != null) {bill=savethis("coke", item, bill, ordered_items, request);}

		if (sprite != null) {bill=savethis("sprite", item, bill, ordered_items, request);}

		if (pepsi != null) {bill=savethis("pepsi", item, bill, ordered_items, request);}
		if (mountain_dew != null) {bill=savethis("mountain dew", item, bill, ordered_items, request);}

		model.addAttribute("list", ordered_items);
		model.addAttribute("bill", bill);

		for (items_prices i : ordered_items) {
			System.out.println(i.getItem() + " " + i.getPrice());
		}
		
		//map.put(new Date(), ordered_items);

		System.out.println("Bill is " + bill);

		if (main_user != null) {
				repoService.updatetheobject(main_user);
		}

		
		return "your_bill";
	}

	@RequestMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletRequest request, HttpServletResponse response) {

		
		User_table user = repoService.loginTheUser(username, password);
		
		if (user != null) {
			
			main_user = user;
			
			request.getSession().setAttribute("USERNAME", username);
			if(user.getUsername().equals("admin")) {
				return "update-menu";
			}
			return "menu";

		} else
			return "login";

	}

	@RequestMapping("/update_menu")
	public String update_menu(@RequestParam("password") String password, @RequestParam("item") String item,
			@RequestParam("price") int price) {

		
		return repoService.updateThemenu("admin", password, price, item);

	}

	@RequestMapping("/my_prev_orders")
	public String seeMyOrders(Model model) {	
		try {
		if(main_user.equals(null)) {
			
			return "login";
			
		}

		User_table user_orders = repoService.usersOrders(main_user.getUsername());
		
		model.addAttribute("prevOrders", user_orders.getMyorder());	

		return "my-orders";}
		catch(NullPointerException e){
			return "login";
			
		}
	}

	public int savethis(String ordered_item, items_prices item, int bill, ArrayList<items_prices> ordered_items,
			HttpServletRequest request) {
		
		
		int bills= repoService.savethis(ordered_item, item, bill, ordered_items, request, main_user);

		
		return bills;

	}
	
	@RequestMapping("/menu_page")
	public String goTomenu() {
		
		return "menu";
	}
	
	@RequestMapping("/reg_page")
	public String goToReg(Model model) {
		
		User_table user = new User_table();
		model.addAttribute("user",user);
		return "reg";
	}
	
	@RequestMapping("/login_page")
	public String goToLogin() {
		
		return "login";
	}
	
	@RequestMapping("/home_page")
	public String goToHome() {
		return"home";
	}
	@RequestMapping("/about_us")
	public String goToUS() {
		return"aboutus";
	}
	@RequestMapping("/contact_us")
	public String goToContactUS() {
		return"contactus";
	}
	
	@RequestMapping("/payment")
	public String goToPayment() {
		return"payment";
	}
	
	@RequestMapping("/logout_page")
	public String goToLogout() {
		main_user=null;
		return "home";
	}
	
	@RequestMapping("/deals_page")
	public String goToDeals() {
		
		return "deals";
	}
}
