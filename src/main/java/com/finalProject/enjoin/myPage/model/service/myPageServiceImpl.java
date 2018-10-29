package com.finalProject.enjoin.myPage.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;

public class myPageServiceImpl implements myPageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private myPageDao mpd;

	@Override
	public Member changeInfo(Member m) {
		Member loginUser = mpd.changeInfo(sqlSession, m);
		
		return loginUser;
	}
	
}
