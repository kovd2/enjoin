package com.finalProject.enjoin.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;
@Repository
public class myPageDaoImpl implements myPageDao{

	//회원정보 수정
	@Override
	public int updateMember(Member m, SqlSessionTemplate sqlSession) {
		
		
		return sqlSession.update("myPage.updateMember", m);		
	}
	

}
