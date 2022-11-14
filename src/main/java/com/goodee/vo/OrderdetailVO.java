package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("orderdetailVO")
public class OrderdetailVO {
	private int orderdetailId;
	private int orderId;
	private int productId;
	private int productCount;
	private String orderStatus;
	private int orderPrice;
	
	
	
	public int getOrderdetailId() {
		return orderdetailId;
	}
	public void setOrderdetailId(int orderdetailId) {
		this.orderdetailId = orderdetailId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
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
	
	
	
}
