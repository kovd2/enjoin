package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

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
	private int file_No; 		//불러올 파일순서번호
	private String origin_Name;	//서버저장파일명
	private String crew_Address; //크루지역
	
	
	public Crew() {}


	public Crew(int crew_Id, String crew_Name, int crew_Max, int user_No, Date request_Date, Date start_Date,
			Date end_Date, String crew_Status, int category_No, int file_No, String origin_Name) {
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
		this.file_No = file_No;
		this.origin_Name = origin_Name;
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


	public int getFile_No() {
		return file_No;
	}


	public String getOrigin_Name() {
		return origin_Name;
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


	public void setFile_No(int file_No) {
		this.file_No = file_No;
	}


	public void setOrigin_Name(String origin_Name) {
		this.origin_Name = origin_Name;
	}


	@Override
	public String toString() {
		return "Crew [crew_Id=" + crew_Id + ", crew_Name=" + crew_Name + ", crew_Max=" + crew_Max + ", user_No="
				+ user_No + ", request_Date=" + request_Date + ", start_Date=" + start_Date + ", end_Date=" + end_Date
				+ ", crew_Status=" + crew_Status + ", category_No=" + category_No + ", file_No=" + file_No
				+ ", origin_Name=" + origin_Name + "]";
	}
	
	
	
	
	
}
