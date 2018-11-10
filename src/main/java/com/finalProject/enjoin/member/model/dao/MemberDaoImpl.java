package com.finalProject.enjoin.member.model.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;


@Repository
public class MemberDaoImpl implements MemberDao{

	//암호화된 비밀번호 조회 메소드
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectPwd", m.getUserId());
	}

	//비밀번호 일치시 회원정보 조회
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.selectLoginUser", m);
	}

	//회원가입용 메소드
	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.insertMember", m);
	}

	//기업회원가입용 메소드
	@Override
	public int insertCompany(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.insertCompany", m);
	}

	//아이디 찾기용 메소드
	@Override
	public int searchId(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.searchId", m);
	}



	//아이디 찾기용 메소드


	
	
	

}
