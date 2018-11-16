package com.finalProject.enjoin.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int userNo;				//회원번호
	private String userType;		//회원유형
	private String userId;			//회원아이디
	private String userPwd;			//회원비밀번호
	private String userName;		//회원이름
	private String phone;			//회원번호
	private String email;			//회원이메일
	private Date enrollDate;		//가입날짜
	private Date modifyDate;		//수정날짜
	private String status;			//회원상태(Y or N)
	private String managerName;		//담당자이름
	private String managerPhone;	//담당자번호
	private String managerEmail;	//담당자이메일
	private String copNo;			//사업자등록번호
	private String ceoName;			//대표자이름
	private String copName;			//시설이름
	private String copAddress;		//회사주소
	private String copType;			//업종
	private String copCon;			//업태
	private String copEmail;		//세금계산서용 이메일
	private String upload_name;		//프로필용 이미지
	private String loginType;		//로그인 타입
	
	public Member() {}

	public Member(int userNo, String userType, String userId, String userPwd, String userName, String phone,
			String email, Date enrollDate, Date modifyDate, String status, String managerName, String managerPhone,
			String managerEmail, String copNo, String ceoName, String copName, String copAddress, String copType,
			String copCon, String copEmail, String upload_name, String loginType) {
		super();
		this.userNo = userNo;
		this.userType = userType;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.phone = phone;
		this.email = email;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.managerName = managerName;
		this.managerPhone = managerPhone;
		this.managerEmail = managerEmail;
		this.copNo = copNo;
		this.ceoName = ceoName;
		this.copName = copName;
		this.copAddress = copAddress;
		this.copType = copType;
		this.copCon = copCon;
		this.copEmail = copEmail;
		this.upload_name = upload_name;
		this.loginType = loginType;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getManagerPhone() {
		return managerPhone;
	}

	public void setManagerPhone(String managerPhone) {
		this.managerPhone = managerPhone;
	}

	public String getManagerEmail() {
		return managerEmail;
	}

	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}

	public String getCopNo() {
		return copNo;
	}

	public void setCopNo(String copNo) {
		this.copNo = copNo;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getCopName() {
		return copName;
	}

	public void setCopName(String copName) {
		this.copName = copName;
	}

	public String getCopAddress() {
		return copAddress;
	}

	public void setCopAddress(String copAddress) {
		this.copAddress = copAddress;
	}

	public String getCopType() {
		return copType;
	}

	public void setCopType(String copType) {
		this.copType = copType;
	}

	public String getCopCon() {
		return copCon;
	}

	public void setCopCon(String copCon) {
		this.copCon = copCon;
	}

	public String getCopEmail() {
		return copEmail;
	}

	public void setCopEmail(String copEmail) {
		this.copEmail = copEmail;
	}

	public String getUpload_name() {
		return upload_name;
	}

	public void setUpload_name(String upload_name) {
		this.upload_name = upload_name;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userType=" + userType + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", userName=" + userName + ", phone=" + phone + ", email=" + email + ", enrollDate=" + enrollDate
				+ ", modifyDate=" + modifyDate + ", status=" + status + ", managerName=" + managerName
				+ ", managerPhone=" + managerPhone + ", managerEmail=" + managerEmail + ", copNo=" + copNo
				+ ", ceoName=" + ceoName + ", copName=" + copName + ", copAddress=" + copAddress + ", copType="
				+ copType + ", copCon=" + copCon + ", copEmail=" + copEmail + ", upload_name=" + upload_name
				+ ", loginType=" + loginType + "]";
	}

	
	
}