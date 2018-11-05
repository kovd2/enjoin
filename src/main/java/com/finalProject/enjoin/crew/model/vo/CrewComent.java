package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

public class CrewComent {
	
	private int coment_No;
	private String coment_Content;
	private Date comment_Date;
	private Date comment_ModifyDate;
	private String coment_Status;
	private int board_No;
	private int user_No;
	private String user_Name;
	
	public CrewComent(){}

	public CrewComent(int coment_No, String coment_Content, Date comment_Date, Date comment_ModifyDate,
			String coment_Status, int board_No, int user_No, String user_Name) {
		super();
		this.coment_No = coment_No;
		this.coment_Content = coment_Content;
		this.comment_Date = comment_Date;
		this.comment_ModifyDate = comment_ModifyDate;
		this.coment_Status = coment_Status;
		this.board_No = board_No;
		this.user_No = user_No;
		this.user_Name = user_Name;
	}

	public int getComent_No() {
		return coment_No;
	}

	public String getComent_Content() {
		return coment_Content;
	}

	public Date getComment_Date() {
		return comment_Date;
	}

	public Date getComment_ModifyDate() {
		return comment_ModifyDate;
	}

	public String getComent_Status() {
		return coment_Status;
	}

	public int getBoard_No() {
		return board_No;
	}

	public int getUser_No() {
		return user_No;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public void setComent_No(int coment_No) {
		this.coment_No = coment_No;
	}

	public void setComent_Content(String coment_Content) {
		this.coment_Content = coment_Content;
	}

	public void setComment_Date(Date comment_Date) {
		this.comment_Date = comment_Date;
	}

	public void setComment_ModifyDate(Date comment_ModifyDate) {
		this.comment_ModifyDate = comment_ModifyDate;
	}

	public void setComent_Status(String coment_Status) {
		this.coment_Status = coment_Status;
	}

	public void setBoard_No(int board_No) {
		this.board_No = board_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	@Override
	public String toString() {
		return "CrewComent [coment_No=" + coment_No + ", coment_Content=" + coment_Content + ", comment_Date="
				+ comment_Date + ", comment_ModifyDate=" + comment_ModifyDate + ", coment_Status=" + coment_Status
				+ ", board_No=" + board_No + ", user_No=" + user_No + ", user_Name=" + user_Name + "]";
	}
	
	
	
	
}
