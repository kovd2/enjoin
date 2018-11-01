package com.finalProject.enjoin.informBoard.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class InformBoard implements Serializable{

	private int BoardNo;          //공고게시판 번호
	private String informBoardType;		//게시판분류
	private String informBoardTitle;		//게시판 제목
	private String informBoardContent;		//게시판 내용
	private Date informEnrollDate;			//공고등록일
	private Date infromModifyDate;			//공고 수정일
	private int informPassCount;			//차감패스
	private String noticeMax;				//공고최대인원
	private String noticeMin;				//공고최소인원
	private Date noticeRequest;				//공고신청일
	private Date noticeStart;				//공고시작일
	private Date noticeEnd;					//공고마감일
	private String noticeStatus;			//공고상태
	private int categoryNo;					//카테고리분류
	
	
public InformBoard(){}


public InformBoard(int boardNo, String informBoardType, String informBoardTitle, String informBoardContent,
		Date informEnrollDate, Date infromModifyDate, Date informStartDate, int informPassCount, String noticeMax,
		String noticeMin, Date noticeRequest, Date noticeStart, Date noticeEnd, String noticeStatus, int categoryNo) {
	super();
	BoardNo = boardNo;
	this.informBoardType = informBoardType;
	this.informBoardTitle = informBoardTitle;
	this.informBoardContent = informBoardContent;
	this.informEnrollDate = informEnrollDate;
	this.infromModifyDate = infromModifyDate;
	this.informPassCount = informPassCount;
	this.noticeMax = noticeMax;
	this.noticeMin = noticeMin;
	this.noticeRequest = noticeRequest;
	this.noticeStart = noticeStart;
	this.noticeEnd = noticeEnd;
	this.noticeStatus = noticeStatus;
	this.categoryNo = categoryNo;
}


public int getBoardNo() {
	return BoardNo;
}


public void setBoardNo(int boardNo) {
	BoardNo = boardNo;
}


public String getInformBoardType() {
	return informBoardType;
}


public void setInformBoardType(String informBoardType) {
	this.informBoardType = informBoardType;
}


public String getInformBoardTitle() {
	return informBoardTitle;
}


public void setInformBoardTitle(String informBoardTitle) {
	this.informBoardTitle = informBoardTitle;
}


public String getInformBoardContent() {
	return informBoardContent;
}


public void setInformBoardContent(String informBoardContent) {
	this.informBoardContent = informBoardContent;
}


public Date getInformEnrollDate() {
	return informEnrollDate;
}


public void setInformEnrollDate(Date informEnrollDate) {
	this.informEnrollDate = informEnrollDate;
}


public Date getInfromModifyDate() {
	return infromModifyDate;
}


public void setInfromModifyDate(Date infromModifyDate) {
	this.infromModifyDate = infromModifyDate;
}


public int getInformPassCount() {
	return informPassCount;
}


public void setInformPassCount(int informPassCount) {
	this.informPassCount = informPassCount;
}


public String getNoticeMax() {
	return noticeMax;
}


public void setNoticeMax(String noticeMax) {
	this.noticeMax = noticeMax;
}


public String getNoticeMin() {
	return noticeMin;
}


public void setNoticeMin(String noticeMin) {
	this.noticeMin = noticeMin;
}


public Date getNoticeRequest() {
	return noticeRequest;
}


public void setNoticeRequest(Date noticeRequest) {
	this.noticeRequest = noticeRequest;
}


public Date getNoticeStart() {
	return noticeStart;
}


public void setNoticeStart(Date noticeStart) {
	this.noticeStart = noticeStart;
}


public Date getNoticeEnd() {
	return noticeEnd;
}


public void setNoticeEnd(Date noticeEnd) {
	this.noticeEnd = noticeEnd;
}


public String getNoticeStatus() {
	return noticeStatus;
}


public void setNoticeStatus(String noticeStatus) {
	this.noticeStatus = noticeStatus;
}


public int getCategoryNo() {
	return categoryNo;
}


public void setCategoryNo(int categoryNo) {
	this.categoryNo = categoryNo;
}


@Override
public String toString() {
	return "informBoard [BoardNo=" + BoardNo + ", informBoardType=" + informBoardType + ", informBoardTitle="
			+ informBoardTitle + ", informBoardContent=" + informBoardContent + ", informEnrollDate=" + informEnrollDate
			+ ", infromModifyDate=" + infromModifyDate + ", informPassCount=" + informPassCount + ", noticeMax="
			+ noticeMax + ", noticeMin=" + noticeMin + ", noticeRequest=" + noticeRequest + ", noticeStart="
			+ noticeStart + ", noticeEnd=" + noticeEnd + ", noticeStatus=" + noticeStatus + ", categoryNo=" + categoryNo
			+ "]";
}


	

	
	
	
}
