package com.bellinfo.groupproj.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.bellinfo.groupproj.model.User_Orders;
import com.bellinfo.groupproj.model.User_table;
import com.bellinfo.groupproj.model.items_prices;

@Repository
public class RepoSaveImpl implements RepoSave{

	private Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
	private SessionFactory sf = cfg.buildSessionFactory();
	private Session session = sf.openSession();

	public <T> void savetheobject(T myobj) {

		session.beginTransaction();
		session.save(myobj);
		session.getTransaction().commit();
	}

	public <T> void updatetheobject(T myobj) {

		session.beginTransaction();
		session.update(myobj);
		session.getTransaction().commit();
	}

	public User_table loginTheUser(String username, String password) {

		Criteria c = session.createCriteria(User_table.class);
		Criterion cr1 = Restrictions.eq("username", username);
		Criterion cr2 = Restrictions.eq("password", password);
		c.add(cr1);
		c.add(cr2);
		User_table user = (User_table) c.uniqueResult();
		return user;
	}

	public String updateThemenu(String username, String password, int price, String item) {

		User_table user = loginTheUser(username, password);
		if (user != null) {

			String hql_update = "update items_prices set price=" + price + " where item='" + item + "'";
			session.beginTransaction();
			Query q = session.createQuery(hql_update);
			int rows = q.executeUpdate();
			System.out.println("no. of rows afftected :" + rows);
			session.getTransaction().commit();
			return "menu";

		} else
			return "update-menu";
	}
	
	public User_table usersOrders(String username) {
		
		Criteria c = session.createCriteria(User_table.class);
		Criterion cr1 = Restrictions.eq("username", username);
		c.add(cr1);
		User_table user_orders = (User_table) c.uniqueResult();
		return user_orders;
	}
	
	
	public int savethis(String ordered_item, items_prices item, int bill, ArrayList<items_prices> ordered_items,
			HttpServletRequest request, User_table main_user) {

		if (ordered_item != null) {
			item = (items_prices) session.get(items_prices.class, ordered_item);
			bill += item.getPrice();
			ordered_items.add(item);
			User_Orders order = new User_Orders();
			order.setUsername((String) request.getSession().getAttribute("USERNAME"));
			order.setDate(new Date());
			order.setItem(item.getItem());
			if (main_user != null) {
				main_user.getMyorder().add(order);
			}
			
			
			
		}
		
		
		return bill;

	}
}
