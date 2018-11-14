package com.finalProject.enjoin.admin.model.vo;

import java.sql.Date;

public class AdminInformBoard implements java.io.Serializable {
	
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
	private String categoryName;			//카테고리네임
	private int userNo;						//회원번호
	private String noticeDaily;				//공고일정
	private String crewArea;   				//장소
	private String userId;					//유저번호
	private int attNo;						//파일번호
	
	
	public AdminInformBoard() {}


	public AdminInformBoard(int boardNo, String informBoardType, String informBoardTitle, String informBoardContent,
			Date informEnrollDate, Date informModifyDate, int informPassCount, String noticeMax, String noticeMin,
			String noticeRequest, String noticeStart, String noticeEnd, String noticeStatus, int categoryNo,
			String categoryName, int userNo, String noticeDaily, String crewArea, String userId, int attNo) {
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
		this.categoryName = categoryName;
		this.userNo = userNo;
		this.noticeDaily = noticeDaily;
		this.crewArea = crewArea;
		this.userId = userId;
		this.attNo = attNo;
	}


	public int getBoardNo() {
		return boardNo;
	}


	public String getInformBoardType() {
		return informBoardType;
	}


	public String getInformBoardTitle() {
		return informBoardTitle;
	}


	public String getInformBoardContent() {
		return informBoardContent;
	}


	public Date getInformEnrollDate() {
		return informEnrollDate;
	}


	public Date getInformModifyDate() {
		return informModifyDate;
	}


	public int getInformPassCount() {
		return informPassCount;
	}


	public String getNoticeMax() {
		return noticeMax;
	}


	public String getNoticeMin() {
		return noticeMin;
	}


	public String getNoticeRequest() {
		return noticeRequest;
	}


	public String getNoticeStart() {
		return noticeStart;
	}


	public String getNoticeEnd() {
		return noticeEnd;
	}


	public String getNoticeStatus() {
		return noticeStatus;
	}


	public int getCategoryNo() {
		return categoryNo;
	}


	public String getCategoryName() {
		return categoryName;
	}


	public int getUserNo() {
		return userNo;
	}


	public String getNoticeDaily() {
		return noticeDaily;
	}


	public String getCrewArea() {
		return crewArea;
	}


	public String getUserId() {
		return userId;
	}


	public int getAttNo() {
		return attNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}


	public void setInformBoardType(String informBoardType) {
		this.informBoardType = informBoardType;
	}


	public void setInformBoardTitle(String informBoardTitle) {
		this.informBoardTitle = informBoardTitle;
	}


	public void setInformBoardContent(String informBoardContent) {
		this.informBoardContent = informBoardContent;
	}


	public void setInformEnrollDate(Date informEnrollDate) {
		this.informEnrollDate = informEnrollDate;
	}


	public void setInformModifyDate(Date informModifyDate) {
		this.informModifyDate = informModifyDate;
	}


	public void setInformPassCount(int informPassCount) {
		this.informPassCount = informPassCount;
	}


	public void setNoticeMax(String noticeMax) {
		this.noticeMax = noticeMax;
	}


	public void setNoticeMin(String noticeMin) {
		this.noticeMin = noticeMin;
	}


	public void setNoticeRequest(String noticeRequest) {
		this.noticeRequest = noticeRequest;
	}


	public void setNoticeStart(String noticeStart) {
		this.noticeStart = noticeStart;
	}


	public void setNoticeEnd(String noticeEnd) {
		this.noticeEnd = noticeEnd;
	}


	public void setNoticeStatus(String noticeStatus) {
		this.noticeStatus = noticeStatus;
	}


	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}


	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public void setNoticeDaily(String noticeDaily) {
		this.noticeDaily = noticeDaily;
	}


	public void setCrewArea(String crewArea) {
		this.crewArea = crewArea;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public void setAttNo(int attNo) {
		this.attNo = attNo;
	}


	@Override
	public String toString() {
		return "AdminInformBoard [boardNo=" + boardNo + ", informBoardType=" + informBoardType + ", informBoardTitle="
				+ informBoardTitle + ", informBoardContent=" + informBoardContent + ", informEnrollDate="
				+ informEnrollDate + ", informModifyDate=" + informModifyDate + ", informPassCount=" + informPassCount
				+ ", noticeMax=" + noticeMax + ", noticeMin=" + noticeMin + ", noticeRequest=" + noticeRequest
				+ ", noticeStart=" + noticeStart + ", noticeEnd=" + noticeEnd + ", noticeStatus=" + noticeStatus
				+ ", categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", userNo=" + userNo
				+ ", noticeDaily=" + noticeDaily + ", crewArea=" + crewArea + ", userId=" + userId + ", attNo=" + attNo
				+ "]";
	}


	
	
}
