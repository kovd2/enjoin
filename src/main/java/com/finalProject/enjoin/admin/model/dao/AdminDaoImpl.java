package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
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
	//기업 회원 정보 조회
	@Override
	public List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		
		return sqlSession.selectList("Admin.companyMemberSelect", null, rowBounds) ;
	}
	//일반회원 회원번호로 조회
	@Override
	public List<Member> userNoSelect(SqlSession sqlSession, int userNo) {
		
		return sqlSession.selectList("Admin.userNoSelect", userNo);
	}
	//일반회원 아이디를 통한 조회
	@Override
	public List<Member> userIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.userIdSelect", userId);
	}
	
	//동일이름 리스트 갯수 조회
	public int getMemberNameListCount(SqlSession sqlSession, String userName) {
		
		return sqlSession.selectOne("Admin.getMemberNameListCount", userName);
	}
	//일반회원 이름을 통한 조회
	@Override
	public List<Member> userNameSelect(SqlSession sqlSession, String userName, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.userNameSelect", userName, rowBounds);
	}
	//일반회원 전화번호를 통한 조회
	@Override
	public List<Member> userPhoneSelect(SqlSession sqlSession, String phone) {
		
		
		return sqlSession.selectList("Admin.userPhoneSelect", phone);
	}
	//이메일을 통한 조회
	@Override
	public List<Member> userEmailSelect(SqlSession sqlSession, String email) {
		
		return sqlSession.selectList("Admin.userEmailSelect",email);
	}
	//유저 블랙처리
	@Override
	public int updateStatusMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateStatusMember",userNo);
	}
	

}
