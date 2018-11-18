package com.finalProject.enjoin.member.model.dao;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;


@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
    private SqlSessionTemplate sqlSession;
	
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
	public Member searchId(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.searchId", m);
	}

	//비밀번호 찾기용 메소드
	@Override
	public Member getPw(Map<String, Object> paramMap) {
		
		return sqlSession.selectOne("Member.emailSendPW", paramMap);
	}
	
	//임시비번 암호화 메소드
	@Override
	public int updateNewPwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("Member.updateNewPwd", m);
	}

	//아이디 중복확인
	@Override
	public int idcheck(SqlSessionTemplate sqlSession, String userid) {
		
		return sqlSession.selectOne("Member.idCheck", userid);
	}

	//이메일 중복확인
	@Override
	public int emailcheck(SqlSessionTemplate sqlSession, String user_email) {
		
		return sqlSession.selectOne("Member.emailCheck", user_email);
	}
	
	//아이디 비밀번호 확인
	@Override
	public int loginCheck2(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap) {
		
		return sqlSession.selectOne("Member.loginCheck2", hmap);
	}
	
	//카카오 로그인
	@Override
	public Member kakaoLogin(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("Member.kakaoLogin", m);
	}

	//db에 카카오 계정 추가
	@Override
	public int kakaoInsert(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.insert("Member.kakaoInsert", m);
	}

	@Override
	public List<HashMap<String, Object>> crewList(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("Member.selectCrew");
	}


}
