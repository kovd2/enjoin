package com.finalProject.enjoin.admin.model.service;

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
	
}
