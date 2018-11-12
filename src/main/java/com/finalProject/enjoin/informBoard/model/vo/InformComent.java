package com.finalProject.enjoin.informBoard.model.vo;

import java.sql.Date;

public class InformComent {

	private int comentNo;
	private String comentContent;
	private Date comentDate;
	private Date comentModifyDate;
	private String comentStatus;
	private int boardNo;
	private int userNo;
	private int parentComentNo;
	
	
	public InformComent() {}


	public InformComent(int comentNo, String comentContent, Date comentDate, Date comentModifyDate, String comentStatus,
			int boardNo, int userNo, int parentComentNo) {
		super();
		this.comentNo = comentNo;
		this.comentContent = comentContent;
		this.comentDate = comentDate;
		this.comentModifyDate = comentModifyDate;
		this.comentStatus = comentStatus;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.parentComentNo = parentComentNo;
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


	public int getParentComentNo() {
		return parentComentNo;
	}


	public void setParentComentNo(int parentComentNo) {
		this.parentComentNo = parentComentNo;
	}


	@Override
	public String toString() {
		return "InformComent [comentNo=" + comentNo + ", comentContent=" + comentContent + ", comentDate=" + comentDate
				+ ", comentModifyDate=" + comentModifyDate + ", comentStatus=" + comentStatus + ", boardNo=" + boardNo
				+ ", userNo=" + userNo + ", parentComentNo=" + parentComentNo + "]";
	}
	
	

	
	
}
