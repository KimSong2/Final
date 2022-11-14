package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("orderVO")
public class OrderVO {
	private int orderId;
	private int id;
	private String receiverName;
	private String receiverPhone;
	private String orderMsg;
	private String receiverAddress1;
	private String receiverAddress2;
	private String receiverAddress3;
	private String orderDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
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
	
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}
