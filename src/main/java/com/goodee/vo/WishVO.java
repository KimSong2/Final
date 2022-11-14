package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("wishVO")
public class WishVO {
	private int wishId;
	private int productId;
	private int id;
	private String memId;
	private int count;
	private String option;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getWishId() {
		return wishId;
	}
	public void setWishId(int wishId) {
		this.wishId = wishId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}	
	
}
