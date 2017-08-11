package com.bellinfo.groupproj.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class User_Orders {

	@Id
	@GeneratedValue
	private int id;
	private String username;
	private String item;
	
	@Temporal(TemporalType.DATE)
	private Date date;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String Username) {
		username = Username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "User_Orders [username=" + username + ", item=" + item + ", date=" + date + "]";
	}
	
	
	
	
	
	
	
}
