package com.finalProject.enjoin.myPage.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.finalProject.enjoin.member.model.vo.Member;

public class Crew implements java.io.Serializable{
	private int crew_Id;	//크루아이디(시퀀스)
	private String crew_Name;	//크루이름
	private int crew_Max;		//총인원
	private int user_No;		//크루장넘버
	private Date request_Date;	//신청일
	private Date start_Date;	//생성일
	private Date end_Date;		//폐쇄일
	private String crew_Status;	//크루상태
	private int category_No;	//카테고리코드
	private String category_Name;	//카테고리이름
	private String crew_Address; //크루지역z
	private String board_title;	 //글제목
	private String board_Content;	//글내용
	private String userId;			//유저아이디
	private String user_Name;		//유저네임
	private String upload_Name;	  //업로드사진이름
	
	public Crew() {}

	public Crew(int crew_Id, String crew_Name, int crew_Max, int user_No, Date request_Date, Date start_Date,
			Date end_Date, String crew_Status, int category_No, String category_Name, String crew_Address,
			String board_title, String board_Content, String userId, String user_Name, String upload_Name) {
		super();
		this.crew_Id = crew_Id;
		this.crew_Name = crew_Name;
		this.crew_Max = crew_Max;
		this.user_No = user_No;
		this.request_Date = request_Date;
		this.start_Date = start_Date;
		this.end_Date = end_Date;
		this.crew_Status = crew_Status;
		this.category_No = category_No;
		this.category_Name = category_Name;
		this.crew_Address = crew_Address;
		this.board_title = board_title;
		this.board_Content = board_Content;
		this.userId = userId;
		this.user_Name = user_Name;
		this.upload_Name = upload_Name;
	}

	public int getCrew_Id() {
		return crew_Id;
	}

	public String getCrew_Name() {
		return crew_Name;
	}

	public int getCrew_Max() {
		return crew_Max;
	}

	public int getUser_No() {
		return user_No;
	}

	public Date getRequest_Date() {
		return request_Date;
	}

	public Date getStart_Date() {
		return start_Date;
	}

	public Date getEnd_Date() {
		return end_Date;
	}

	public String getCrew_Status() {
		return crew_Status;
	}

	public int getCategory_No() {
		return category_No;
	}

	public String getCategory_Name() {
		return category_Name;
	}

	public String getCrew_Address() {
		return crew_Address;
	}

	public String getBoard_title() {
		return board_title;
	}

	public String getBoard_Content() {
		return board_Content;
	}

	public String getUserId() {
		return userId;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public String getUpload_Name() {
		return upload_Name;
	}

	public void setCrew_Id(int crew_Id) {
		this.crew_Id = crew_Id;
	}

	public void setCrew_Name(String crew_Name) {
		this.crew_Name = crew_Name;
	}

	public void setCrew_Max(int crew_Max) {
		this.crew_Max = crew_Max;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public void setRequest_Date(Date request_Date) {
		this.request_Date = request_Date;
	}

	public void setStart_Date(Date start_Date) {
		this.start_Date = start_Date;
	}

	public void setEnd_Date(Date end_Date) {
		this.end_Date = end_Date;
	}

	public void setCrew_Status(String crew_Status) {
		this.crew_Status = crew_Status;
	}

	public void setCategory_No(int category_No) {
		this.category_No = category_No;
	}

	public void setCategory_Name(String category_Name) {
		this.category_Name = category_Name;
	}

	public void setCrew_Address(String crew_Address) {
		this.crew_Address = crew_Address;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public void setUpload_Name(String upload_Name) {
		this.upload_Name = upload_Name;
	}

	@Override
	public String toString() {
		return "Crew [crew_Id=" + crew_Id + ", crew_Name=" + crew_Name + ", crew_Max=" + crew_Max + ", user_No="
				+ user_No + ", request_Date=" + request_Date + ", start_Date=" + start_Date + ", end_Date=" + end_Date
				+ ", crew_Status=" + crew_Status + ", category_No=" + category_No + ", category_Name=" + category_Name
				+ ", crew_Address=" + crew_Address + ", board_title=" + board_title + ", board_Content=" + board_Content
				+ ", userId=" + userId + ", user_Name=" + user_Name + ", upload_Name=" + upload_Name + "]";
	}

	
}
