package com.finalProject.enjoin.myPage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class JJIM implements Serializable{
	private int userNo;
	private int facilityNo;					//제휴신청번호(식별자,시퀀스)
	private String passCount;				//차감패스수량
	private String facilityName;			//제휴업업체이름
	private String facilityArea;			//제휴업체지역
	private String facilitySection;			//제휴업체구역
	private String facilityAddress;			//제휴업체상세주소
	private String facilityEvent;			//제휴업체종목(카테고리)
	private String uploadName;				//제휴시설 대표 이미지

	public JJIM() {}

	public JJIM(int userNo, int facilityNo, String passCount, String facilityName, String facilityArea,
			String facilitySection, String facilityAddress, String facilityEvent, String uploadName) {
		super();
		this.userNo = userNo;
		this.facilityNo = facilityNo;
		this.passCount = passCount;
		this.facilityName = facilityName;
		this.facilityArea = facilityArea;
		this.facilitySection = facilitySection;
		this.facilityAddress = facilityAddress;
		this.facilityEvent = facilityEvent;
		this.uploadName = uploadName;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getFacilityNo() {
		return facilityNo;
	}

	public void setFacilityNo(int facilityNo) {
		this.facilityNo = facilityNo;
	}

	public String getPassCount() {
		return passCount;
	}

	public void setPassCount(String passCount) {
		this.passCount = passCount;
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

	public String getUploadName() {
		return uploadName;
	}

	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}

	@Override
	public String toString() {
		return "JJIM [userNo=" + userNo + ", facilityNo=" + facilityNo + ", passCount=" + passCount + ", facilityName="
				+ facilityName + ", facilityArea=" + facilityArea + ", facilitySection=" + facilitySection
				+ ", facilityAddress=" + facilityAddress + ", facilityEvent=" + facilityEvent + ", uploadName="
				+ uploadName + "]";
	}
	
	

}


