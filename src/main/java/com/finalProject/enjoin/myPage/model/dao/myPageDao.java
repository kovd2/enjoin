package com.finalProject.enjoin.myPage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.member.model.vo.Member;

public interface myPageDao {

	Member changeInfo(SqlSessionTemplate sqlSession, Member m);

}
