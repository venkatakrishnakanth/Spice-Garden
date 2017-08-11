package com.bellinfo.groupproj.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		items_prices item1 = new items_prices("thai", 10);
		items_prices item2 = new items_prices("parmesan", 30);
		
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(items_prices.class);
		SessionFactory sf = cfg.buildSessionFactory();
		Session session=sf.openSession();
		Transaction t =session.beginTransaction();
		session.save(item1);
		session.save(item2);
		t.commit();
		session.close();
		sf.close();
		

	}

}
