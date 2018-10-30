package com.finalProject.enjoin.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;
@Repository
public class myPageDaoImpl implements myPageDao{

	@Override
	public Member changeInfo(SqlSessionTemplate sqlSession, Member m) {
		Member loginUser = sqlSession.selectOne("Mypage.changeInfo", m);
		
		return loginUser;
	}

}
