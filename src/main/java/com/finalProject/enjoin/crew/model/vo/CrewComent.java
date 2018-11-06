package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

public class CrewComent implements java.io.Serializable {
	
	private int coment_No;			//댓글코드
	private String coment_Content;	//내용
	private Date coment_Date;		//작성일
	private Date coment_ModifyDate; //수정일
	private String coment_Status;	//상태
	private int board_No;			//게시물번호
	private int parent_Coment_No;	//부모댓글번호
	private int user_No;			//작성자
	private String user_Name;		//유저이름
	
	public CrewComent(){}

	public CrewComent(int coment_No, String coment_Content, Date coment_Date, Date coment_ModifyDate,
			String coment_Status, int board_No, int parent_Coment_No, int user_No, String user_Name) {
		super();
		this.coment_No = coment_No;
		this.coment_Content = coment_Content;
		this.coment_Date = coment_Date;
		this.coment_ModifyDate = coment_ModifyDate;
		this.coment_Status = coment_Status;
		this.board_No = board_No;
		this.parent_Coment_No = parent_Coment_No;
		this.user_No = user_No;
		this.user_Name = user_Name;
	}

	public int getComent_No() {
		return coment_No;
	}

	public String getComent_Content() {
		return coment_Content;
	}

	public Date getComent_Date() {
		return coment_Date;
	}

	public Date getComent_ModifyDate() {
		return coment_ModifyDate;
	}

	public String getComent_Status() {
		return coment_Status;
	}

	public int getBoard_No() {
		return board_No;
	}

	public int getParent_Coment_No() {
		return parent_Coment_No;
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

	public void setComent_Date(Date coment_Date) {
		this.coment_Date = coment_Date;
	}

	public void setComent_ModifyDate(Date coment_ModifyDate) {
		this.coment_ModifyDate = coment_ModifyDate;
	}

	public void setComent_Status(String coment_Status) {
		this.coment_Status = coment_Status;
	}

	public void setBoard_No(int board_No) {
		this.board_No = board_No;
	}

	public void setParent_Coment_No(int parent_Coment_No) {
		this.parent_Coment_No = parent_Coment_No;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	@Override
	public String toString() {
		return "CrewComent [coment_No=" + coment_No + ", coment_Content=" + coment_Content + ", coment_Date="
				+ coment_Date + ", coment_ModifyDate=" + coment_ModifyDate + ", coment_Status=" + coment_Status
				+ ", board_No=" + board_No + ", parent_Coment_No=" + parent_Coment_No + ", user_No=" + user_No
				+ ", user_Name=" + user_Name + "]";
	}
	
	
	
	
	
	
	
}
