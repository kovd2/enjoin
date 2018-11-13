package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface AdminDao {
	
	//멤버수 조회
	int getListCount(SqlSession sqlSession);
	
	//일반회원정보 조회
	List<Member> memberSelect(SqlSession sqlSession, PageInfo pi);
	
	//기업회원 리스트 조회
	int getListCount1(SqlSession sqlSession);
	
	//기업 회원 정보 조회
	List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1);
	
	//일반회원 번호로 조회
	List<Member> userNoSelect(SqlSession sqlSession, int userNo);

	//일반회원 아이디로 조회
	List<Member> userIdSelect(SqlSession sqlSession, String userId);

	//유저이름을 통한 아이디 조회
	List<Member> userNameSelect(SqlSession sqlSession, String userName, PageInfo pi);
	
	//유저 이름 리스트 갯수 조회
	int getMemberNameListCount(SqlSession sqlSession, String userName);
	
	//일반회원 전화번호를 통한 조회
	List<Member> userPhoneSelect(SqlSession sqlSession, String phone);
	
	//이메일을 통한 조회
	List<Member> userEmailSelect(SqlSession sqlSession, String email);
	
	//유저 블랙처리
	int updateStatusMember(SqlSession sqlSession, int userNo);
	
	//기업 상호명을 통한 조회
	List<Member> copNameSelect(SqlSession sqlSession, String copName);
	
	//기업 아이디를 통한 조회
	List<Member> copUserIdSelect(SqlSession sqlSession, String userId);
	
	//기업 사업자등록번호를 통한 조회
	List<Member> copNoSelect(SqlSession sqlSession, String copNo);
	
	//기업 담당자 이메일을 통한 조회
	List<Member> managerEmailSelect(SqlSession sqlSession, String managerEmail);
	
	//기업회원 블랙처리
	int updateCopStatusMember(SqlSession sqlSession, int userNo);
	
	//블랙회원 리스트 갯수
	int getBlackListCount(SqlSession sqlSession);
	
	//블랙회원 정보 조회
	List<Member> selectBlackMemberList(SqlSession sqlSession, PageInfo pi);
	
	//블랙 기업 회원 리스트 갯수
	int getBlackListCount1(SqlSession sqlSession);
	
	//블랙 기업회원 정보 조회
	List<Member> companyBlackMemberSelect(SqlSession sqlSession, PageInfo pi1);

	//블랙 일반회원 해제 처리
	int updateStatusBlackMember(SqlSession sqlSession, int userNo);

	//블랙 기업회원 해제 처리
	int updateCopStatusBlackMember(SqlSession sqlSession, int userNo);
	
	//블랙회원 아이디 검색
	List<Member> userBlackIdSelect(SqlSession sqlSession, String userId);
	
	//블랙회원 이름 리스트 갯수 조회
	int getBlackMemberNameListCount(SqlSession sqlSession, String userName);

	//블랙 회원 이름으로 정보 조회
	List<Member> userBlackNameSelect(SqlSession sqlSession, String userName, PageInfo pi);
	
	//블랙 회원 상호명으로 정보 조회 
	List<Member> copNameBlackSelect(SqlSession sqlSession, String copName);
	
	//블랙 기업 회원 아이디로 정보 조회
	List<Member> blackCopUserIdSelect(SqlSession sqlSession, String userId);
	
	//크루 리스트 갯수 조회
	int getCrewListCount(SqlSession sqlSession);
	
	//크루 정보 조회
	List<Crew> crewListSelect(SqlSession sqlSession, PageInfo pi);
	
	//블랙크루 리스트 갯수 조회
	int getCrewBlackListCount1(SqlSession sqlSession);
	
	//블랙크루 리스트 정보 조회
	List<Crew> blackCrewListSelect(SqlSession sqlSession, PageInfo pi1);
	
	//크루를 블랙상태로 만듬
	int updateStatusBlackCrew(SqlSession sqlSession, int crew_Id);
	
	//크루의 블랙상태를 풀음
	int updateStatusCrew(SqlSession sqlSession, int crew_Id);
	
	

	
	
	


	
	
	
	
	
	
	

}
