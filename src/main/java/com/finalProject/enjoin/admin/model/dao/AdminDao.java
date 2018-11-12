package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
	
	

	
	
	


	
	
	
	
	
	
	

}
