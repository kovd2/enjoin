package com.finalProject.enjoin.member.model.dao;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	
	//아이디 찾기
	Member searchId(SqlSessionTemplate sqlSession, Member m);

	//비밀번호 찾기
	Member getPw(Map<String, Object> paramMap);

	//암호화된 비밀번호 업데이트
	int updateNewPwd(SqlSessionTemplate sqlSession, Member m);

	//아이디 중복체크
	int idcheck(SqlSessionTemplate sqlSession, String userid);

	//이메일 중복체크
	int emailcheck(SqlSessionTemplate sqlSession, String user_email);

	//아이디 비밀번호 확인용
	int loginCheck2(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap);
	
	//카카오로그인
	Member kakaoLogin(SqlSessionTemplate sqlSession, Member m);

	//db에 카카오 계정 추가
	int kakaoInsert(SqlSessionTemplate sqlSession, Member m);

	List<HashMap<String, Object>> crewList(SqlSessionTemplate sqlSession);




	
	

}
