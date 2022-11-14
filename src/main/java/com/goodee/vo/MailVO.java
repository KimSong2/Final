package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("mailVO")
public class MailVO {
	private String qacategory;
	private String ordernumber;
	private String senderName;
	private String senderMail;
	private String accept;
	private String title;
	private String content;
	
	public String getOrdernumber() {
		return ordernumber;
	}
	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}
	public String getQacategory() {
		return qacategory;
	}
	public void setQacategory(String qacategory) {
		this.qacategory = qacategory;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderMail() {
		return senderMail;
	}
	public void setSenderMail(String senderMail) {
		this.senderMail = senderMail;
	}
	public String getAccept() {
		return accept;
	}
	public void setAccept(String accept) {
		this.accept = accept;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
