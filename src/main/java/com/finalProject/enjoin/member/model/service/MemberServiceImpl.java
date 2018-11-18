package com.finalProject.enjoin.member.model.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.member.model.dao.MemberDao;
import com.finalProject.enjoin.member.model.exception.LoginException;
import com.finalProject.enjoin.member.model.vo.Member;


@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao md;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	//로그인용 메소드
	@Override
	public Member loginMember(Member m) throws LoginException {
		Member loginUser = null;
		
		String encPassword = md.selectEncPassword(sqlSession, m);
		
		if(!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("아이디와 비밀번호를 확인해주세요.");
			
			
		}else {
			loginUser = md.selectMember(sqlSession, m);
		}
		return loginUser;
		

	}
	
	//회원가입용 메소드
	@Override
	public int insertMember(Member m) {
		
		return md.insertMember(sqlSession, m);
	}

	//기업회원가입용 메소드
	@Override
	public int insertCompany(Member m) {
		
		return md.insertCompany(sqlSession, m);
	}

	//아이디 찾기용 메소드
	@Override
	public Member searchId(Member m) {
		
		return md.searchId(sqlSession, m);
	}

	
	//비밀번호 찾기용 메소드
	@Override
	public Member getPw(Map<String, Object> paramMap) {
		
		return md.getPw(paramMap);
	}

	//임시 비번 암호화 메소드
	@Override
	public int updateNewPwd(Member m) {
		
		return md.updateNewPwd(sqlSession, m);
	}

	//아이디중복확인
	@Override
	public int idcheck(String userid) {

		return md.idcheck(sqlSession, userid);
	}

	//이메일중복확인
	@Override
	public int emailcheck(String user_email) {
		
		return md.emailcheck(sqlSession, user_email);
	}

	//카카오 로그인
	@Override
	public Member kakaoLogin(Member m) {
		
		return md.kakaoLogin(sqlSession, m);
	}

	@Override
	public int loginCheck2(HashMap<String, Object> hmap) {
		// TODO Auto-generated method stub
		return 0;
	}

	//db에 카카오 계정 추가
	@Override
	public int kakaoInsert(Member m) {
		
		return md.kakaoInsert(sqlSession, m);
	}

	@Override
	public List<HashMap<String, Object>> crewList() {
		
		return md.crewList(sqlSession);
	}



}
