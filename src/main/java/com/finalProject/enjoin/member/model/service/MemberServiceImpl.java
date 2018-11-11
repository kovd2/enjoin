package com.finalProject.enjoin.member.model.service;

import java.util.ArrayList;
import java.util.List;

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
			throw new LoginException("로그인 실패");
			
			
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



}
