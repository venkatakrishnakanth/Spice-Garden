package com.bellinfo.groupproj.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.bellinfo.groupproj.dao.RepoSave;
import com.bellinfo.groupproj.model.User_table;
import com.bellinfo.groupproj.model.items_prices;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RepoServiceImpl implements RepoService {
	
	@Autowired
	private RepoSave repoSave;

	public <T> void savetheobject(T myobj) {
		// TODO Auto-generated method stub
		
		repoSave.savetheobject(myobj);
		
	}

	public <T> void updatetheobject(T myobj) {
		// TODO Auto-generated method stub
		
		repoSave.updatetheobject(myobj);
	}

	public User_table loginTheUser(String username, String password) {
		// TODO Auto-generated method stub
		return repoSave.loginTheUser(username, password);
	}

	public String updateThemenu(String username, String password, int price, String item) {
		// TODO Auto-generated method stub
		return repoSave.updateThemenu(username, password, price, item);
	}

	public User_table usersOrders(String username) {
		// TODO Auto-generated method stub
		return repoSave.usersOrders(username);
	}

	public int savethis(String ordered_item, items_prices item, int bill, ArrayList<items_prices> ordered_items,
			HttpServletRequest request, User_table main_user) {
		// TODO Auto-generated method stub
		return repoSave.savethis(ordered_item, item, bill, ordered_items, request, main_user);
	}

}
