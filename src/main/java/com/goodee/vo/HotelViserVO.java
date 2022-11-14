package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hotelviserVO")
public class HotelViserVO {
	
	private int resDetailNum;
	private int roomId;
	private String resStart;
	private String resEnd;
	private String resStatus;
	private int resId;
	private int res_num;
	private String resDate;
	private String memName;
	private String memEmail;
	private String memPhone;
	private String resMsg;
	private int id;
	private String hotelName;
	private int resNum;
	
	
	
	public int getResNum() {
		return resNum;
	}
	public void setResNum(int resNum) {
		this.resNum = resNum;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
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
	public int getResId() {
		return resId;
	}
	public void setResId(int resId) {
		this.resId = resId;
	}
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
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
