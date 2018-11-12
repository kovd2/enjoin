package com.finalProject.enjoin.admin.model.dao;

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
	
	
	
	
	

}
