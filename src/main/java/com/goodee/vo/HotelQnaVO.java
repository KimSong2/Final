package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelqnaVO")
public class HotelQnaVO {
	private int hotelqnaId;
	private int hotelId;
	private String hotelqnaTitle;
	private String hotelqnaContent;
	private String hotelqnaDate;
	private String memId;
	public int getHotelqnaId() {
		return hotelqnaId;
	}
	public void setHotelqnaId(int hotelqnaId) {
		this.hotelqnaId = hotelqnaId;
	}
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelqnaTitle() {
		return hotelqnaTitle;
	}
	public void setHotelqnaTitle(String hotelqnaTitle) {
		this.hotelqnaTitle = hotelqnaTitle;
	}
	public String getHotelqnaContent() {
		return hotelqnaContent;
	}
	public void setHotelqnaContent(String hotelqnaContent) {
		this.hotelqnaContent = hotelqnaContent;
	}
	public String getHotelqnaDate() {
		return hotelqnaDate;
	}
	public void setHotelqnaDate(String hotelqnaDate) {
		this.hotelqnaDate = hotelqnaDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
