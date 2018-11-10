package com.finalProject.enjoin.payment.model.vo;

import java.sql.Date;

public class Passrecord {
	
	private int ppNo;
	private String ppStatus;
	private Date ppDate;
	private int ppCount;
	private int payNo;
	
	public Passrecord() {}

	public Passrecord(int ppNo, String ppStatus, Date ppDate, int ppCount, int payNo) {
		super();
		this.ppNo = ppNo;
		this.ppStatus = ppStatus;
		this.ppDate = ppDate;
		this.ppCount = ppCount;
		this.payNo = payNo;
	}

	public int getPpNo() {
		return ppNo;
	}

	public void setPpNo(int ppNo) {
		this.ppNo = ppNo;
	}

	public String getPpStatus() {
		return ppStatus;
	}

	public void setPpStatus(String ppStatus) {
		this.ppStatus = ppStatus;
	}

	public Date getPpDate() {
		return ppDate;
	}

	public void setPpDate(Date ppDate) {
		this.ppDate = ppDate;
	}

	public int getPpCount() {
		return ppCount;
	}

	public void setPpCount(int ppCount) {
		this.ppCount = ppCount;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	@Override
	public String toString() {
		return "Passrecord [ppNo=" + ppNo + ", ppStatus=" + ppStatus + ", ppDate=" + ppDate + ", ppCount=" + ppCount
				+ ", payNo=" + payNo + "]";
	}
	
	
}
