package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("orderjoinVO")
public class OrderjoinVO {
	private int orderId;
	private int id;
	private int productId;
	private String receiverName;
	private String receiverPhone;
	private String orderMsg;
	private String receiverAddress1;
	private String receiverAddress2;
	private String receiverAddress3;
	private String orderDate;
	private int productCount;
	private String orderStatus;
	private int orderPrice;
	private int orderdetailId;
	private String productName;
	private String productShop;
	private String productContent;
	private String productCategory;
	private int productTotal;
	private int productPrice;
	private String productOpt;
	private String productImage;
	
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
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public String getOrderMsg() {
		return orderMsg;
	}
	public void setOrderMsg(String orderMsg) {
		this.orderMsg = orderMsg;
	}
	public String getReceiverAddress1() {
		return receiverAddress1;
	}
	public void setReceiverAddress1(String receiverAddress1) {
		this.receiverAddress1 = receiverAddress1;
	}
	public String getReceiverAddress2() {
		return receiverAddress2;
	}
	public void setReceiverAddress2(String receiverAddress2) {
		this.receiverAddress2 = receiverAddress2;
	}
	public String getReceiverAddress3() {
		return receiverAddress3;
	}
	public void setReceiverAddress3(String receiverAddress3) {
		this.receiverAddress3 = receiverAddress3;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public int getOrderdetailId() {
		return orderdetailId;
	}
	public void setOrderdetailId(int orderdetailId) {
		this.orderdetailId = orderdetailId;
	}
	
	
}
