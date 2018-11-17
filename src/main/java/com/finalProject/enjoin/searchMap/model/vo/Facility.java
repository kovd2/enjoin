package com.finalProject.enjoin.searchMap.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Facility implements Serializable{
	
	private int facilityNo;					//제휴신청번호(식별자, 시퀀스)
	private int facilityCopNo;				//제휴기업번호(user참조용)
	private Date facilityRequestDate;		//제휴신청일자
	private Date facilityStartDate;			//제휴시작일자
	private Date facilityEndDate;			//제휴종료일자
	private String facilityStatus;			//제휴상태
	private String passCount;				//차감패스수량
	private String facilityName;			//제휴업업체이름
	private String facilityArea;			//제휴업체지역
	private String facilitySection;			//제휴업체구역
	private String facilityAddress;			//제휴업체상세주소
	private String facilityEvent;			//제휴업체종목
	private String facilityManagerName;		//제휴업체 담당자 이름
	private String facilityManagerPhone;	//제휴업체 담당자 번호
	private String timeForCall;				//통화가능시간
	private String mon_fri_time;			//평일 이용시간
	private String sat_time;				//토요일 이용시간
	private String sun_time;				//공휴일 및 일요일 이용시간
	private String totalAddress;			//합친주소
	
	
	
	
	public Facility() {}

	
	
	public Facility(int facilityNo, int facilityCopNo, Date facilityRequestDate, Date facilityStartDate,
			Date facilityEndDate, String facilityStatus, String passCount, String facilityName, String facilityArea,
			String facilitySection, String facilityAddress, String facilityEvent, String facilityManagerName,
			String facilityManagerPhone, String timeForCall, String mon_fri_time, String sat_time, String sun_time,
			String totalAddress) {
		super();
		this.facilityNo = facilityNo;
		this.facilityCopNo = facilityCopNo;
		this.facilityRequestDate = facilityRequestDate;
		this.facilityStartDate = facilityStartDate;
		this.facilityEndDate = facilityEndDate;
		this.facilityStatus = facilityStatus;
		this.passCount = passCount;
		this.facilityName = facilityName;
		this.facilityArea = facilityArea;
		this.facilitySection = facilitySection;
		this.facilityAddress = facilityAddress;
		this.facilityEvent = facilityEvent;
		this.facilityManagerName = facilityManagerName;
		this.facilityManagerPhone = facilityManagerPhone;
		this.timeForCall = timeForCall;
		this.mon_fri_time = mon_fri_time;
		this.sat_time = sat_time;
		this.sun_time = sun_time;
		this.totalAddress = totalAddress;
	}



	
	public String getTotalAddress() {
		return totalAddress;
	}



	public void setTotalAddress(String totalAddress) {
		this.totalAddress = totalAddress;
	}



	public int getFacilityCopNo() {
		return facilityCopNo;
	}

	public void setFacilityCopNo(int facilityCopNo) {
		this.facilityCopNo = facilityCopNo;
	}

	public Date getFacilityRequestDate() {
		return facilityRequestDate;
	}

	public void setFacilityRequestDate(Date facilityRequestDate) {
		this.facilityRequestDate = facilityRequestDate;
	}

	public Date getFacilityStartDate() {
		return facilityStartDate;
	}

	public void setFacilityStartDate(Date facilityStartDate) {
		this.facilityStartDate = facilityStartDate;
	}

	public Date getFacilityEndDate() {
		return facilityEndDate;
	}

	public void setFacilityEndDate(Date facilityEndDate) {
		this.facilityEndDate = facilityEndDate;
	}

	public String getFacilityStatus() {
		return facilityStatus;
	}

	public void setFacilityStatus(String facilityStatus) {
		this.facilityStatus = facilityStatus;
	}

	public String getPassCount() {
		return passCount;
	}

	public void setPassCount(String passCount) {
		this.passCount = passCount;
	}

	public int getFacilityNo() {
		return facilityNo;
	}

	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}

	public String getFacilityName() {
		return facilityName;
	}

	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}

	public String getFacilityArea() {
		return facilityArea;
	}

	public void setFacilityArea(String facilityArea) {
		this.facilityArea = facilityArea;
	}

	public String getFacilitySection() {
		return facilitySection;
	}

	public void setFacilitySection(String facilitySection) {
		this.facilitySection = facilitySection;
	}

	public String getFacilityAddress() {
		return facilityAddress;
	}

	public void setFacilityAddress(String facilityAddress) {
		this.facilityAddress = facilityAddress;
	}

	public String getFacilityEvent() {
		return facilityEvent;
	}

	public void setFacilityEvent(String facilityEvent) {
		this.facilityEvent = facilityEvent;
	}

	public String getFacilityManagerName() {
		return facilityManagerName;
	}

	public void setFacilityManagerName(String facilityManagerName) {
		this.facilityManagerName = facilityManagerName;
	}

	public String getFacilityManagerPhone() {
		return facilityManagerPhone;
	}

	public void setFacilityManagerPhone(String facilityManagerPhone) {
		this.facilityManagerPhone = facilityManagerPhone;
	}

	public String getTimeForCall() {
		return timeForCall;
	}

	public void setTimeForCall(String timeForCall) {
		this.timeForCall = timeForCall;
	}

	public String getMon_fri_time() {
		return mon_fri_time;
	}

	public void setMon_fri_time(String mon_fri_time) {
		this.mon_fri_time = mon_fri_time;
	}

	public String getSat_time() {
		return sat_time;
	}

	public void setSat_time(String sat_time) {
		this.sat_time = sat_time;
	}

	public String getSun_time() {
		return sun_time;
	}

	public void setSun_time(String sun_time) {
		this.sun_time = sun_time;
	}

	@Override
	public String toString() {
		return "Facility [facilityNo=" + facilityNo + ", facilityCopNo=" + facilityCopNo + ", facilityRequestDate="
				+ facilityRequestDate + ", facilityStartDate=" + facilityStartDate + ", facilityEndDate="
				+ facilityEndDate + ", facilityStatus=" + facilityStatus + ", passCount=" + passCount
				+ ", facilityName=" + facilityName + ", facilityArea=" + facilityArea + ", facilitySection="
				+ facilitySection + ", facilityAddress=" + facilityAddress + ", facilityEvent=" + facilityEvent
				+ ", facilityManagerName=" + facilityManagerName + ", facilityManagerPhone=" + facilityManagerPhone
				+ ", timeForCall=" + timeForCall + ", mon_fri_time=" + mon_fri_time + ", sat_time=" + sat_time
				+ ", sun_time=" + sun_time + ", totalAddress=" + totalAddress + "]";
	}
	
	
}