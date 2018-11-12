package com.finalProject.enjoin.payment.model.vo;

import java.sql.Date;

public class Payment {
	
	private int payNo;
	private int price;
	private Date payDate;
	private String proofNo;
	private int payType;
	private int userNo;
	private String refundNo;
	private int passPlus;
	
	public Payment() {}

	public Payment(int payNo, int price, Date payDate, String proofNo, int payType, int userNo, String refundNo,
			int passPlus) {
		super();
		this.payNo = payNo;
		this.price = price;
		this.payDate = payDate;
		this.proofNo = proofNo;
		this.payType = payType;
		this.userNo = userNo;
		this.refundNo = refundNo;
		this.passPlus = passPlus;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getProofNo() {
		return proofNo;
	}

	public void setProofNo(String proofNo) {
		this.proofNo = proofNo;
	}

	public int getPayType() {
		return payType;
	}

	public void setPayType(int payType) {
		this.payType = payType;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getRefundNo() {
		return refundNo;
	}

	public void setRefundNo(String refundNo) {
		this.refundNo = refundNo;
	}

	public int getPassPlus() {
		return passPlus;
	}

	public void setPassPlus(int passPlus) {
		this.passPlus = passPlus;
	}

	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", price=" + price + ", payDate=" + payDate + ", proofNo=" + proofNo
				+ ", payType=" + payType + ", userNo=" + userNo + ", refundNo=" + refundNo + ", passPlus=" + passPlus
				+ "]";
	}
	
}
