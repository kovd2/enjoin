package com.finalProject.enjoin.informBoard.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class InformBoard implements Serializable{

	private int boardNo;          //공고게시판 번호
	private String informBoardType;		//게시판분류
	private String informBoardTitle;		//게시판 제목
	private String informBoardContent;		//게시판 내용
	private Date informEnrollDate;			//공고등록일
	private Date informModifyDate;			//공고 수정일
	private int informPassCount;			//차감패스
	private String noticeMax;				//공고최대인원
	private String noticeMin;				//공고최소인원
	private String noticeRequest;				//공고신청일
	private String noticeStart;				//공고시작일
	private String noticeEnd;					//공고마감일
	private String noticeStatus;			//공고상태
	private int categoryNo;					//카테고리분류
	private int userNo;						//회원번호
	private String noticeDaily;				//공고일정
	private String crewArea;   				//장소
	

//	private MultipartFile	fileImg1;
//	private MultipartFile	fileImg2;
//	private MultipartFile	fileImg3;
	
	public InformBoard() {}


	public InformBoard(int boardNo, String informBoardType, String informBoardTitle, String informBoardContent,
			Date informEnrollDate, Date informModifyDate, int informPassCount, String noticeMax, String noticeMin,
			String noticeRequest, String noticeStart, String noticeEnd, String noticeStatus, int categoryNo, int userNo,
			String noticeDaily, String crewArea) {
		super();
		this.boardNo = boardNo;
		this.informBoardType = informBoardType;
		this.informBoardTitle = informBoardTitle;
		this.informBoardContent = informBoardContent;
		this.informEnrollDate = informEnrollDate;
		this.informModifyDate = informModifyDate;
		this.informPassCount = informPassCount;
		this.noticeMax = noticeMax;
		this.noticeMin = noticeMin;
		this.noticeRequest = noticeRequest;
		this.noticeStart = noticeStart;
		this.noticeEnd = noticeEnd;
		this.noticeStatus = noticeStatus;
		this.categoryNo = categoryNo;
		this.userNo = userNo;
		this.noticeDaily = noticeDaily;
		this.crewArea = crewArea;
	}


	public int getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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


	public Date getInformModifyDate() {
		return informModifyDate;
	}


	public void setInformModifyDate(Date informModifyDate) {
		this.informModifyDate = informModifyDate;
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


	public String getNoticeRequest() {
		return noticeRequest;
	}


	public void setNoticeRequest(String noticeRequest) {
		this.noticeRequest = noticeRequest;
	}


	public String getNoticeStart() {
		return noticeStart;
	}


	public void setNoticeStart(String noticeStart) {
		this.noticeStart = noticeStart;
	}


	public String getNoticeEnd() {
		return noticeEnd;
	}


	public void setNoticeEnd(String noticeEnd) {
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


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getNoticeDaily() {
		return noticeDaily;
	}


	public void setNoticeDaily(String noticeDaily) {
		this.noticeDaily = noticeDaily;
	}


	public String getCrewArea() {
		return crewArea;
	}


	public void setCrewArea(String crewArea) {
		this.crewArea = crewArea;
	}


	@Override
	public String toString() {
		return "InformBoard [boardNo=" + boardNo + ", informBoardType=" + informBoardType + ", informBoardTitle="
				+ informBoardTitle + ", informBoardContent=" + informBoardContent + ", informEnrollDate="
				+ informEnrollDate + ", informModifyDate=" + informModifyDate + ", informPassCount=" + informPassCount
				+ ", noticeMax=" + noticeMax + ", noticeMin=" + noticeMin + ", noticeRequest=" + noticeRequest
				+ ", noticeStart=" + noticeStart + ", noticeEnd=" + noticeEnd + ", noticeStatus=" + noticeStatus
				+ ", categoryNo=" + categoryNo + ", userNo=" + userNo + ", noticeDaily=" + noticeDaily + ", crewArea="
				+ crewArea + "]";
	}


	
}
