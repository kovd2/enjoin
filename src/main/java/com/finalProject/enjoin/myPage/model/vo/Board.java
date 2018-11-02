package com.finalProject.enjoin.myPage.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Board implements Serializable {
	
	private int boardNo; 					//게시물번호
	private String boardType;				//구분
	private String boardTitle; 				//게시물제목
	private String boardContent; 			//게시물내용
	private int boardCount;					//조회수
	private Date enrollDate; 				//작성일
	private Date modifyDate; 				//수정일
	private String status; 					//삭제여부
	private int userNo; 					//작성자
	private String userName;
	private ArrayList<Coment> comentList;	//댓글리스트
	
	public Board() {}

	public Board(int boardNo, String boardType, String boardTitle, String boardContent, int boardCount, Date enrollDate,
			Date modifyDate, String status, int userNo, String userName, ArrayList<Coment> comentList) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardCount = boardCount;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userNo = userNo;
		this.userName = userName;
		this.comentList = comentList;
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

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public ArrayList<Coment> getComentList() {
		return comentList;
	}

	public void setComentList(ArrayList<Coment> comentList) {
		this.comentList = comentList;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardType=" + boardType + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardCount=" + boardCount + ", enrollDate=" + enrollDate
				+ ", modifyDate=" + modifyDate + ", status=" + status + ", userNo=" + userNo + ", userName=" + userName
				+ ", comentList=" + comentList + "]";
	}

	
	
}
