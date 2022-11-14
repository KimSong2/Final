package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelVO")
public class HotelVO {
	private int hotelId;
	private String hotelName;
	private String hotelAddr;
	private String hotelCategory;
	private String hotelTel;
	private String hotelOpt;
	private String hotelDeopt;
	private String hotelThum;
	private String hotelImg;
	private String hotelContent;
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelAddr() {
		return hotelAddr;
	}
	public void setHotelAddr(String hotelAddr) {
		this.hotelAddr = hotelAddr;
	}
	public String getHotelCategory() {
		return hotelCategory;
	}
	public void setHotelCategory(String hotelCategory) {
		this.hotelCategory = hotelCategory;
	}
	public String getHotelTel() {
		return hotelTel;
	}
	public void setHotelTel(String hotelTel) {
		this.hotelTel = hotelTel;
	}
	public String getHotelOpt() {
		return hotelOpt;
	}
	public void setHotelOpt(String hotelOpt) {
		this.hotelOpt = hotelOpt;
	}
	public String getHotelDeopt() {
		return hotelDeopt;
	}
	public void setHotelDeopt(String hotelDeopt) {
		this.hotelDeopt = hotelDeopt;
	}
	public String getHotelThum() {
		return hotelThum;
	}
	public void setHotelThum(String hotelThum) {
		this.hotelThum = hotelThum;
	}
	public String getHotelImg() {
		return hotelImg;
	}
	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}
	public String getHotelContent() {
		return hotelContent;
	}
	public void setHotelContent(String hotelContent) {
		this.hotelContent = hotelContent;
	}

	
}
