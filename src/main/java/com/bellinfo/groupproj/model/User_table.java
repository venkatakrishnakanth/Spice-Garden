package com.bellinfo.groupproj.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;
import org.springframework.stereotype.Component;




@Entity
public class User_table {
	
	
	
	@NotNull
	@NotEmpty
	private String firstName;
	@NotNull
	@NotEmpty
	private String lastName;
	@NotNull
	@NotEmpty
	@Email
	private String email;
	
	@NotEmpty
	@NotNull
	@Size(min=10,max=10,message="Your number should definitely be 10 digits")
	private String phoneNumber;
	
	@NotNull
	@NotEmpty
	@Id
	private String username;
	
	
	
	@NotNull
	@NotEmpty
	private String password;
	
	
	@OneToMany(cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	private Collection<User_Orders> myorder = new ArrayList<User_Orders>();
	
	
	/*@OneToMany(cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	private Map<Date, List<items_prices>> map = new HashMap<Date, List<items_prices>>();
	
	
	
	
	public Map<Date, List<items_prices>> getMap() {
		return map;
	}

	public void setMap(Map<Date, List<items_prices>> map) {
		this.map = map;
	}
*/
	public Collection<User_Orders> getMyorder() {
		return myorder;
	}

	public void setMyorder(Collection<User_Orders> myorder) {
		this.myorder = myorder;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	
	
	public User_table(String firstName, String lastName, String email, String phoneNumber, String username,
			String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.username = username;
		this.password = password;
	}

	public User_table() {
		
	}

	@Override
	public String toString() {
		return "User_table [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", username=" + username + ", password=" + password + "]";
	}
	
	

}
