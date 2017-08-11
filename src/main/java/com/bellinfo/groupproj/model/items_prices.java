package com.bellinfo.groupproj.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class items_prices {
	@Id
	@NotNull
	private String item;
	@NotNull
	private int price;
	
	public items_prices(){
		
	}
	
	

	public items_prices(String item, int price) {
		super();
		this.item = item;
		this.price = price;
	}



	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	

}
