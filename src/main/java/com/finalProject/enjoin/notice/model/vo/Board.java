package com.finalProject.enjoin.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable {
	
	private int boardNo; //게시물번호
	private String boardType; //구분
	private String boardTitle; //게시물제목
	private String boardContent; //게시물내용
	private Date enrollDate; //작성일
	private Date modifyDate; //수정일
	private String status; //삭제여부
	private int userNo; //작성자
	private String upload_name; //첨부파일 이름
	private String faqCategory; //FAQ카테고리
	
	public Board() {}

	public Board(int boardNo, String boardType, String boardTitle, String boardContent, Date enrollDate,
			Date modifyDate, String status, int userNo, String upload_name, String faqCategory) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userNo = userNo;
		this.upload_name = upload_name;
		this.faqCategory = faqCategory;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
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

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUpload_name() {
		return upload_name;
	}

	public void setUpload_name(String upload_name) {
		this.upload_name = upload_name;
	}

	public String getFaqCategory() {
		return faqCategory;
	}

	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardType=" + boardType + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + ", userNo=" + userNo + ", upload_name=" + upload_name + ", faqCategory="
				+ faqCategory + "]";
	}
	
}
