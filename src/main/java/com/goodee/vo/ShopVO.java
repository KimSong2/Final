package com.goodee.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("shopVO")
public class ShopVO {
	private int productId;
	private String productName;
	private String productShop;
	private String productContent;
	private String productCategory;
	private int productTotal;
	private int productPrice;
	private String productOpt;
	private String productImage;

	
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
	public String getProductOpt() {
		return productOpt;
	}
	public void setProductOpt(String productOpt) {
		this.productOpt = productOpt;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	
	
}
