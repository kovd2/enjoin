package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;

import com.finalProject.enjoin.crew.model.vo.Crew;
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
	
	//기업상호명을 통한 검색
	List<Member> copNameSelect(String copName);
	
	//기업 유저 아이디를 통한 검색
	List<Member> copUserIdSelect(String userId);
	
	//기업 사업자등록번호를 통한 조회
	List<Member> copNoSelect(String copNo);
	
	//기업 담당자 이메일을 통한 조회
	List<Member> managerEmailSelect(String managerEmail);
	
	//기업 회원 블랙처리
	int updateCopStatusMember(int userNo);
	
	//블랙회원 리스트 갯수
	int getBlackListCount();
	
	//블랙일반회원 정보 조회
	List<Member> selectBlackMemberList(PageInfo pi);
	
	//블랙기업회원 리스트 갯수
	int getBlackListCount1();
	
	//블랙 기업회원 정보 조회
	List<Member> companyBlackMemberSelect(PageInfo pi1);
	
	//일반회원 블랙 해제 처리
	int updateStatusBlackMember(int userNo);
	
	//기업회원 블랙 해제 처리
	int updateCopStatusBlackMember(int userNo);
	
	//블랙일반회원 아이디 검색
	List<Member> userBlackIdSelect(String userId);
	
	//블랙일반회원 이름 동일인물 갯수
	int getBlackMemberNameListCount(String userName);

	//블랙 일반회원 이름 정보 조회
	List<Member> userBlackNameSelect(String userName, PageInfo pi);
	
	//블랙기업회원 상호명으로 검색
	List<Member> copNameBlackSelect(String copName);
	
	//블랙기업회원 아이디로 검색
	List<Member> blackCopUserIdSelect(String userId);
	
	//크루 리스트 갯수 조회
	int getCrewListCount();
	
	//크루 회원 조회
	List<Crew> crewListSelect(PageInfo pi);

	//블랙 크루 리스트 갯수 조회
	int getCrewBlackListCount1();
	
	//블랙 크루 정보 조회
	List<Crew> blackCrewListSelect(PageInfo pi1);
	
	//크루를 블랙상태로 만듬
	int updateStatusBlackCrew(int crew_Id);
	
	//크루의 블랙상태를 풀음
	int updateStatusCrew(int crew_Id);
	
	

	

	
}
