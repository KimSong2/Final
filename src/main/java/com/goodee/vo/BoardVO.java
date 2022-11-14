package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("boardVO")
public class BoardVO {
	private int boardId;
	private int id;
	private String boardTitle;
	private String boardContent;
	private String boardCategory;
	private String boardDate;
	
	
	
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	private int isDelete;
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
	
}
