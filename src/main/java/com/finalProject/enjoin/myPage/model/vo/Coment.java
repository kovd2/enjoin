package com.finalProject.enjoin.myPage.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Coment implements Serializable{
	private int comentNo;				//댓글번호
	private String comentContent;		//댓글내용
	private Date comentDate;			//댓글등록일
	private Date comentModifyDate;		//댓글수정일
	private String comentStatus;		//댓글상태
	private int boardNo;				//게시물번호
	private int userNo;					//회원번호
	private String userId;				//회원ID
	private String userName;			//회원이름
	private String boardType;			//게시물 타입
	private String boardTitle;			//게시물 제목
	
	public Coment() {}

	public Coment(int comentNo, String comentContent, Date comentDate, Date comentModifyDate, String comentStatus,
			int boardNo, int userNo, String userId, String userName, String boardType, String boardTitle) {
		super();
		this.comentNo = comentNo;
		this.comentContent = comentContent;
		this.comentDate = comentDate;
		this.comentModifyDate = comentModifyDate;
		this.comentStatus = comentStatus;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.userId = userId;
		this.userName = userName;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
	}

	public int getComentNo() {
		return comentNo;
	}

	public void setComentNo(int comentNo) {
		this.comentNo = comentNo;
	}

	public String getComentContent() {
		return comentContent;
	}

	public void setComentContent(String comentContent) {
		this.comentContent = comentContent;
	}

	public Date getComentDate() {
		return comentDate;
	}

	public void setComentDate(Date comentDate) {
		this.comentDate = comentDate;
	}

	public Date getComentModifyDate() {
		return comentModifyDate;
	}

	public void setComentModifyDate(Date comentModifyDate) {
		this.comentModifyDate = comentModifyDate;
	}

	public String getComentStatus() {
		return comentStatus;
	}

	public void setComentStatus(String comentStatus) {
		this.comentStatus = comentStatus;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	@Override
	public String toString() {
		return "Coment [comentNo=" + comentNo + ", comentContent=" + comentContent + ", comentDate=" + comentDate
				+ ", comentModifyDate=" + comentModifyDate + ", comentStatus=" + comentStatus + ", boardNo=" + boardNo
				+ ", userNo=" + userNo + ", userId=" + userId + ", userName=" + userName + ", boardType=" + boardType
				+ ", boardTitle=" + boardTitle + "]";
	}

	
	
}
