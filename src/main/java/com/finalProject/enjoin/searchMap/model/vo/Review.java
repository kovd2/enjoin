package com.finalProject.enjoin.searchMap.model.vo;

public class Review {
	
	
	
	private int rwNo;
	private  String rwDate;
	private String rwContent;
	private double score;
	private String rwModifiDate;
	private String rwStatus;
	private int facilityNo;
	private int userNo;
	

	public Review() {}


	public Review(int rwNo, String rwDate, String rwContent, double score, String rwModifiDate, String rwStatus,
			int facilityNo, int userNo) {
		super();
		this.rwNo = rwNo;
		this.rwDate = rwDate;
		this.rwContent = rwContent;
		this.score = score;
		this.rwModifiDate = rwModifiDate;
		this.rwStatus = rwStatus;
		this.facilityNo = facilityNo;
		this.userNo = userNo;
	}


	public int getRwNo() {
		return rwNo;
	}


	public void setRwNo(int rwNo) {
		this.rwNo = rwNo;
	}


	public String getRwDate() {
		return rwDate;
	}


	public void setRwDate(String rwDate) {
		this.rwDate = rwDate;
	}


	public String getRwContent() {
		return rwContent;
	}


	public void setRwContent(String rwContent) {
		this.rwContent = rwContent;
	}


	public double getScore() {
		return score;
	}


	public void setScore(double score) {
		this.score = score;
	}


	public String getRwModifiDate() {
		return rwModifiDate;
	}


	public void setRwModifiDate(String rwModifiDate) {
		this.rwModifiDate = rwModifiDate;
	}


	public String getRwStatus() {
		return rwStatus;
	}


	public void setRwStatus(String rwStatus) {
		this.rwStatus = rwStatus;
	}


	public int getFacilityNo() {
		return facilityNo;
	}


	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	@Override
	public String toString() {
		return "Review [rwNo=" + rwNo + ", rwDate=" + rwDate + ", rwContent=" + rwContent + ", score=" + score
				+ ", rwModifiDate=" + rwModifiDate + ", rwStatus=" + rwStatus + ", facilityNo=" + facilityNo
				+ ", userNo=" + userNo + "]";
	}

	
	
	
	
	}