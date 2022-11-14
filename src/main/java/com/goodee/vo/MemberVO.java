package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("memberVO")
public class MemberVO {
	private int id;
	private String memId;
	private String memPw;
	private String memName;
	private String memBirth;
	private String memEmail;
	private String memPhone;
	private String memGender;
	private int point;
	private String memOaddress;
	private String memAddress;
	private String memDetailaddress;
	private String agree;
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
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
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	
	public String getMemOaddress() {
		return memOaddress;
	}
	public void setMemOaddress(String memOaddress) {
		this.memOaddress = memOaddress;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public String getMemDetailaddress() {
		return memDetailaddress;
	}
	public void setMemDetailaddress(String memDetailaddress) {
		this.memDetailaddress = memDetailaddress;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
		
	
}
