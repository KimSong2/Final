package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelroomVO")
public class HotelRoomVO {
	private int roomId;
	private int hotelId;
	private String hotelName;
	private String roomName;
	private String roomType;
	private String roomPrice;
	private String roomContent;
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
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
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomContent() {
		return roomContent;
	}
	public void setRoomContent(String roomContent) {
		this.roomContent = roomContent;
	}
	
	
	
}
