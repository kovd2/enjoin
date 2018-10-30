package com.finalProject.enjoin.myPage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;
@Service
public class myPageServiceImpl implements myPageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private myPageDao mpd;
	
	//회원정보 수정

	@Override
	public int updateMember(Member m) {
		
		return mpd.updateMember(m, sqlSession);
		
	}
	
	
}
