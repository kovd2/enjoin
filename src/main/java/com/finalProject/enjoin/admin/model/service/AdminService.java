package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface AdminService {
	
	//일반회원 리스트 갯수
	int getListCount();
	
	//일반회원 리스트 조회
	List<Member> memberSelect(PageInfo pi);
	
	//기업회원 리스트 갯수
	int getListCount1();
	
	//기업 회원 리스트 조회
	List<Member> companyMemberSelect(PageInfo pi1);
	
	//유저 넘버를 통한 조회
	List<Member> userNoSelect(int userNo);
	
	//유저 아이디를 통한 조회
	List<Member> userIdSelect(String userId);
	
	//유저이름을 통한 조회
	List<Member> userNameSelect(String userName, PageInfo pi);
	
	//유저동일이름 갯수 조회
	int getMemberNameListCount(String userName);

	//전화번호를 통한 조회
	List<Member> userPhoneSelect(String phone);
	
	//이메일을 통한 조회
	List<Member> userEmailSelect(String email);
	
	//유저 블랙 처리 
	int updateStatusMember(int userNo);
	

	

	
}
