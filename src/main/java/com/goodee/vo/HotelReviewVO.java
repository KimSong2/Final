package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelreviewVO")
public class HotelReviewVO {
	private int hotelreviewId;
	private int hotelId;
	private String hotelreviewContent;
	private String hotelreviewDate;
	private String memId;
	private String hotelreviewRoomname;
	
	public int getHotelreviewId() {
		return hotelreviewId;
	}
	public void setHotelreviewId(int hotelreviewId) {
		this.hotelreviewId = hotelreviewId;
	}
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelreviewContent() {
		return hotelreviewContent;
	}
	public void setHotelreviewContent(String hotelreviewContent) {
		this.hotelreviewContent = hotelreviewContent;
	}
	public String getHotelreviewDate() {
		return hotelreviewDate;
	}
	public void setHotelreviewDate(String hotelreviewDate) {
		this.hotelreviewDate = hotelreviewDate;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getHotelreviewRoomname() {
		return hotelreviewRoomname;
	}
	public void setHotelreviewRoomname(String hotelreviewRoomname) {
		this.hotelreviewRoomname = hotelreviewRoomname;
	}
	
	
	
	
	
}
