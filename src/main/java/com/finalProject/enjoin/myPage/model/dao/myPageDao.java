package com.finalProject.enjoin.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.member.model.vo.Member;

public interface myPageDao {
	//회원정보 수정
	int updateMember(Member m, SqlSessionTemplate sqlSession);

}
