package com.bellinfo.groupproj.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.bellinfo.groupproj.model.User_table;
import com.bellinfo.groupproj.model.items_prices;

public interface RepoService {
	
	public <T> void savetheobject(T myobj);

	public <T> void updatetheobject(T myobj); 

	public User_table loginTheUser(String username, String password); 

	public String updateThemenu(String username, String password, int price, String item);
	
	public User_table usersOrders(String username); 
	
	public int savethis(String ordered_item, items_prices item, int bill, ArrayList<items_prices> ordered_items,
			HttpServletRequest request, User_table main_user);


}
