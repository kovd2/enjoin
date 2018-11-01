package com.finalProject.enjoin.myPage.model.vo;

import java.util.Date;

public class inCrew {
	private int userNo;
	private int crewId;
	private Date requestDate;
	private Date startDate;
	private Date endDate;
	private String inCrewStatus;
	private int increwNo;
	
	public inCrew() {}

	public inCrew(int userNo, int crewId, Date requestDate, Date startDate, Date endDate, String inCrewStatus,
			int increwNo) {
		super();
		this.userNo = userNo;
		this.crewId = crewId;
		this.requestDate = requestDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.inCrewStatus = inCrewStatus;
		this.increwNo = increwNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getCrewId() {
		return crewId;
	}

	public void setCrewId(int crewId) {
		this.crewId = crewId;
	}

	public Date getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getInCrewStatus() {
		return inCrewStatus;
	}

	public void setInCrewStatus(String inCrewStatus) {
		this.inCrewStatus = inCrewStatus;
	}

	public int getIncrewNo() {
		return increwNo;
	}

	public void setIncrewNo(int increwNo) {
		this.increwNo = increwNo;
	}

	@Override
	public String toString() {
		return "inCrew [userNo=" + userNo + ", crewId=" + crewId + ", requestDate=" + requestDate + ", startDate="
				+ startDate + ", endDate=" + endDate + ", inCrewStatus=" + inCrewStatus + ", increwNo=" + increwNo
				+ "]";
	}

	
}
