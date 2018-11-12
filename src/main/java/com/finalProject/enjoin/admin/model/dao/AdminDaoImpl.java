package com.finalProject.enjoin.admin.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Repository
public class AdminDaoImpl implements AdminDao {
	//일반회원 회원수 조회
	@Override
	public int getListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount");
	}
	//일반회원 정보 조회
	@Override
	public List<Member> memberSelect(SqlSession sqlSession, PageInfo pi) {
			
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.memberSelect", null, rowBounds);
	}
	//기업회원 회원수 조회
	@Override
	public int getListCount1(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount1");
	}
	@Override
	public List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		
		return sqlSession.selectList("Admin.companyMemberSelect", null, rowBounds) ;
	}

}
