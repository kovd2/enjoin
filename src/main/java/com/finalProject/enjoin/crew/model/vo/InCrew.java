package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

public class InCrew implements java.io.Serializable {
	private int user_No; //회원번호
	private int crew_Id; //크루아이디
	private Date request_Date; //참여신청일
	private Date start_Date;   //참여일	
	private Date end_Date;	   //탈퇴일
	private String inCrew_Status; //참여상태
	private int inCrew_No;		  //크루참여번호
	private String user_Name;	  //유저아이디
	private String upload_Name;	  //업로드사진이름
	
	public InCrew(){}

	public InCrew(int user_No, int crew_Id, Date request_Date, Date start_Date, Date end_Date, String inCrew_Status,
			int inCrew_No, String user_Name, String upload_Name) {
		super();
		this.user_No = user_No;
		this.crew_Id = crew_Id;
		this.request_Date = request_Date;
		this.start_Date = start_Date;
		this.end_Date = end_Date;
		this.inCrew_Status = inCrew_Status;
		this.inCrew_No = inCrew_No;
		this.user_Name = user_Name;
		this.upload_Name = upload_Name;
	}

	public int getUser_No() {
		return user_No;
	}

	public int getCrew_Id() {
		return crew_Id;
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

	public String getInCrew_Status() {
		return inCrew_Status;
	}

	public int getInCrew_No() {
		return inCrew_No;
	}

	public String getUser_Name() {
		return user_Name;
	}

	public String getUpload_Name() {
		return upload_Name;
	}

	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}

	public void setCrew_Id(int crew_Id) {
		this.crew_Id = crew_Id;
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

	public void setInCrew_Status(String inCrew_Status) {
		this.inCrew_Status = inCrew_Status;
	}

	public void setInCrew_No(int inCrew_No) {
		this.inCrew_No = inCrew_No;
	}

	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}

	public void setUpload_Name(String upload_Name) {
		this.upload_Name = upload_Name;
	}

	@Override
	public String toString() {
		return "InCrew [user_No=" + user_No + ", crew_Id=" + crew_Id + ", request_Date=" + request_Date
				+ ", start_Date=" + start_Date + ", end_Date=" + end_Date + ", inCrew_Status=" + inCrew_Status
				+ ", inCrew_No=" + inCrew_No + ", user_Name=" + user_Name + ", upload_Name=" + upload_Name + "]";
	}

	
	
	
}
