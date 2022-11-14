package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("wishjoinVO")
public class WishjoinVO {
	
	private int productId;
	private String productName;
	private String productShop;
	private String productImage;
	private String productContent;
	private String productCategory;
	private String productDate;
	private int productTotal;
	private int productPrice;
	private int count;
	private String option;
	private int wishId;
	private int id;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductShop() {
		return productShop;
	}
	public void setProductShop(String productShop) {
		this.productShop = productShop;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public int getProductTotal() {
		return productTotal;
	}
	public void setProductTotal(int productTotal) {
		this.productTotal = productTotal;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
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
	public int getWishId() {
		return wishId;
	}
	public void setWishId(int wishId) {
		this.wishId = wishId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
}
