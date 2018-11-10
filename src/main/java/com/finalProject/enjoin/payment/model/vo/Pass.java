package com.finalProject.enjoin.payment.model.vo;

import java.sql.Date;

public class Pass {
	private int passNo;
	private int userNo;
	private int passCount;
	private Date passModifyDate;
	
	public Pass() {}

	public Pass(int passNo, int userNo, int passCount, Date passModifyDate) {
		super();
		this.passNo = passNo;
		this.userNo = userNo;
		this.passCount = passCount;
		this.passModifyDate = passModifyDate;
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPassCount() {
		return passCount;
	}

	public void setPassCount(int passCount) {
		this.passCount = passCount;
	}

	public Date getPassModifyDate() {
		return passModifyDate;
	}

	public void setPassModifyDate(Date passModifyDate) {
		this.passModifyDate = passModifyDate;
	}

	@Override
	public String toString() {
		return "Pass [passNo=" + passNo + ", userNo=" + userNo + ", passCount=" + passCount + ", passModifyDate="
				+ passModifyDate + "]";
	}
	
	
}
