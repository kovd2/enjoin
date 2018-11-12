package com.finalProject.enjoin.myPage.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Pass implements Serializable{
	private int userNo;				//회원번호
	private int passNo;				//회원패스관리번호
	private int passCount;			//수량
	private Date passModifyDate;	//변경일자
	
	public Pass() {}

	public Pass(int userNo, int passNo, int passCount, Date passModifyDate) {
		super();
		this.userNo = userNo;
		this.passNo = passNo;
		this.passCount = passCount;
		this.passModifyDate = passModifyDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
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
		return "Pass [userNo=" + userNo + ", passNo=" + passNo + ", passCount=" + passCount + ", passModifyDate="
				+ passModifyDate + "]";
	}
	
	
}
