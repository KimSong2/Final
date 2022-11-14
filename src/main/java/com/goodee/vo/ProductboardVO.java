package com.goodee.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("productboardVO")
public class ProductboardVO {
	private int proboardId;
	private int productId;
	private String proboardTitle;
	private String proboardContent;
	private String proboardDate;
	private String memId;
	private String proboardCategory;

	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProboardTitle() {
		return proboardTitle;
	}
	public void setProboardTitle(String proboardTitle) {
		this.proboardTitle = proboardTitle;
	}
	public String getProboardContent() {
		return proboardContent;
	}
	public void setProboardContent(String proboardContent) {
		this.proboardContent = proboardContent;
	}
	
	public int getProboardId() {
		return proboardId;
	}
	public void setProboardId(int proboardId) {
		this.proboardId = proboardId;
	}
	
	
	public String getProboardDate() {
		return proboardDate;
	}
	public void setProboardDate(String proboardDate) {
		this.proboardDate = proboardDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getProboardCategory() {
		return proboardCategory;
	}
	public void setProboardCategory(String proboardCategory) {
		this.proboardCategory = proboardCategory;
	}
	
}
