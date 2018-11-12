package com.finalProject.enjoin.myPage.model.vo;

import java.io.Serializable;
import java.util.Date;

public class inCrew implements Serializable{
	private int userNo;
	private String userId;
	private int crewId;
	private Date requestDate;
	private Date startDate;
	private Date endDate;
	private String inCrewStatus;
	private int increwNo;
	private String crewName;
	private String uploadName;
	
	public inCrew() {}

	public inCrew(int userNo, String userId, int crewId, Date requestDate, Date startDate, Date endDate,
			String inCrewStatus, int increwNo, String crewName, String uploadName) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.crewId = crewId;
		this.requestDate = requestDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.inCrewStatus = inCrewStatus;
		this.increwNo = increwNo;
		this.crewName = crewName;
		this.uploadName = uploadName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	public String getCrewName() {
		return crewName;
	}

	public void setCrewName(String crewName) {
		this.crewName = crewName;
	}

	public String getUploadName() {
		return uploadName;
	}

	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}

	@Override
	public String toString() {
		return "inCrew [userNo=" + userNo + ", userId=" + userId + ", crewId=" + crewId + ", requestDate=" + requestDate
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", inCrewStatus=" + inCrewStatus + ", increwNo="
				+ increwNo + ", crewName=" + crewName + ", uploadName=" + uploadName + "]";
	}

	
}
