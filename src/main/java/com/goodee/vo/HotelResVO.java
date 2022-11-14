package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelresVO")
public class HotelResVO {
	private int resId;
	private int resDetailNum;
	private String resDate;
	private String memName;
	private String memEmail;
	private String memPhone;
	private String resMsg;
	private int id;
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getResDetailNum() {
		return resDetailNum;
	}
	public void setResDetailNum(int resDetailNum) {
		this.resDetailNum = resDetailNum;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemPhone() {
		return memPhone;
	}
	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}
	public String getResMsg() {
		return resMsg;
	}
	public void setResMsg(String resMsg) {
		this.resMsg = resMsg;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
