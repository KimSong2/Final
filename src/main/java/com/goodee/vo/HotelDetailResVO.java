package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hoteldetailresVO")
public class HotelDetailResVO {
	private int resDetailNum;
	private int roomId;
	private String resStart;
	private String resEnd;
	private String resStatus;
	
	public int getResDetailNum() {
		return resDetailNum;
	}
	public void setResDetailNum(int resDetailNum) {
		this.resDetailNum = resDetailNum;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getResStart() {
		return resStart;
	}
	public void setResStart(String resStart) {
		this.resStart = resStart;
	}
	public String getResEnd() {
		return resEnd;
	}
	public void setResEnd(String resEnd) {
		this.resEnd = resEnd;
	}
	public String getResStatus() {
		return resStatus;
	}
	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
	}
	
	
}
