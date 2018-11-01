package com.finalProject.enjoin.crew.model.vo;

import java.sql.Date;

public class CrewRecruitmentBoard implements java.io.Serializable {
	
	private int board_No;		//게시물번호
	private String board_Type;	//게시판 구분
	private String board_Title;	//게시물 제목
	private String board_Content; //게시물내용
	private Date enroll_Date;	  //작성일
	private Date modify_Date;	  //수정일
	private String crew_Area;	  //활동구역
	private int crew_Count;		  //활동인원
	private int crew_No;		  //크루코드
	private int board_Count;	  //조회수
	private int recruit_Max;	  //모집최대인원
	private Date recruit_Start;	  //모집시작날짜
	private Date recruit_End;	  //모집마감날짜
	private String recruit_Status;  //모집상태 여부
	private String status;		  //상태 삭제 여부
	private int user_No;		  //작성자 번호	
	private int category_No;	  //카테고리번호	16개
	
	
	public CrewRecruitmentBoard() {}


	public CrewRecruitmentBoard(int board_No, String board_Type, String board_Title, String board_Content,
			Date enroll_Date, Date modify_Date, String crew_Area, int crew_Count, int crew_No, int board_Count,
			int recruit_Max, Date recruit_Start, Date recruit_End, String recruit_Status, String status, int user_No,
			int category_No) {
		super();
		this.board_No = board_No;
		this.board_Type = board_Type;
		this.board_Title = board_Title;
		this.board_Content = board_Content;
		this.enroll_Date = enroll_Date;
		this.modify_Date = modify_Date;
		this.crew_Area = crew_Area;
		this.crew_Count = crew_Count;
		this.crew_No = crew_No;
		this.board_Count = board_Count;
		this.recruit_Max = recruit_Max;
		this.recruit_Start = recruit_Start;
		this.recruit_End = recruit_End;
		this.recruit_Status = recruit_Status;
		this.status = status;
		this.user_No = user_No;
		this.category_No = category_No;
	}


	public int getBoard_No() {
		return board_No;
	}


	public String getBoard_Type() {
		return board_Type;
	}


	public String getBoard_Title() {
		return board_Title;
	}


	public String getBoard_Content() {
		return board_Content;
	}


	public Date getEnroll_Date() {
		return enroll_Date;
	}


	public Date getModify_Date() {
		return modify_Date;
	}


	public String getCrew_Area() {
		return crew_Area;
	}


	public int getCrew_Count() {
		return crew_Count;
	}


	public int getCrew_No() {
		return crew_No;
	}


	public int getBoard_Count() {
		return board_Count;
	}


	public int getRecruit_Max() {
		return recruit_Max;
	}


	public Date getRecruit_Start() {
		return recruit_Start;
	}


	public Date getRecruit_End() {
		return recruit_End;
	}


	public String getRecruit_Status() {
		return recruit_Status;
	}


	public String getStatus() {
		return status;
	}


	public int getUser_No() {
		return user_No;
	}


	public int getCategory_No() {
		return category_No;
	}


	public void setBoard_No(int board_No) {
		this.board_No = board_No;
	}


	public void setBoard_Type(String board_Type) {
		this.board_Type = board_Type;
	}


	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}


	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}


	public void setEnroll_Date(Date enroll_Date) {
		this.enroll_Date = enroll_Date;
	}


	public void setModify_Date(Date modify_Date) {
		this.modify_Date = modify_Date;
	}


	public void setCrew_Area(String crew_Area) {
		this.crew_Area = crew_Area;
	}


	public void setCrew_Count(int crew_Count) {
		this.crew_Count = crew_Count;
	}


	public void setCrew_No(int crew_No) {
		this.crew_No = crew_No;
	}


	public void setBoard_Count(int board_Count) {
		this.board_Count = board_Count;
	}


	public void setRecruit_Max(int recruit_Max) {
		this.recruit_Max = recruit_Max;
	}


	public void setRecruit_Start(Date recruit_Start) {
		this.recruit_Start = recruit_Start;
	}


	public void setRecruit_End(Date recruit_End) {
		this.recruit_End = recruit_End;
	}


	public void setRecruit_Status(String recruit_Status) {
		this.recruit_Status = recruit_Status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public void setUser_No(int user_No) {
		this.user_No = user_No;
	}


	public void setCategory_No(int category_No) {
		this.category_No = category_No;
	}


	@Override
	public String toString() {
		return "CrewRecruitmentBoard [board_No=" + board_No + ", board_Type=" + board_Type + ", board_Title="
				+ board_Title + ", board_Content=" + board_Content + ", enroll_Date=" + enroll_Date + ", modify_Date="
				+ modify_Date + ", crew_Area=" + crew_Area + ", crew_Count=" + crew_Count + ", crew_No=" + crew_No
				+ ", board_Count=" + board_Count + ", recruit_Max=" + recruit_Max + ", recruit_Start=" + recruit_Start
				+ ", recruit_End=" + recruit_End + ", recruit_Status=" + recruit_Status + ", status=" + status
				+ ", user_No=" + user_No + ", category_No=" + category_No + "]";
	}



	
	
	
}
