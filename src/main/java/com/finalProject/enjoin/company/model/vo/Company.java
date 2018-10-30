package com.finalProject.enjoin.company.model.vo;

import java.io.Serializable;

public class Company implements Serializable{
	private String facilityName;
	private String facilityArea;
	private String facilitySection;
	private String facilityAddress;
	private String facilityEvent;
	private String facilityManagerName;
	private String facilityManagerPhone;
	private String timeForCall;
	
	public Company() {}

	public Company(String facilityName, String facilityArea, String facilitySection, String facilityAddress,
			String facilityEvent, String facilityManagerName, String facilityManagerPhone, String timeForCall) {
		super();
		this.facilityName = facilityName;
		this.facilityArea = facilityArea;
		this.facilitySection = facilitySection;
		this.facilityAddress = facilityAddress;
		this.facilityEvent = facilityEvent;
		this.facilityManagerName = facilityManagerName;
		this.facilityManagerPhone = facilityManagerPhone;
		this.timeForCall = timeForCall;
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

	@Override
	public String toString() {
		return "Company [facilityName=" + facilityName + ", facilityArea=" + facilityArea + ", facilitySection="
				+ facilitySection + ", facilityAddress=" + facilityAddress + ", facilityEvent=" + facilityEvent
				+ ", facilityManagerName=" + facilityManagerName + ", facilityManagerPhone=" + facilityManagerPhone
				+ ", timeForCall=" + timeForCall + "]";
	}
	
	

}
