package com.finalProject.enjoin.member.model.dao;



import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.member.model.vo.Member;

public interface MemberDao {

	//암호화된 비밀번호 조회용
	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	//암호화처리후 로그인
	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	
	//회원가입
	int insertMember(SqlSessionTemplate sqlSession, Member m);

	int insertCompany(SqlSessionTemplate sqlSession, Member m);



	
	

}
