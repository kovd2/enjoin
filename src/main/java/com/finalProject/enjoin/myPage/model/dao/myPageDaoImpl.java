package com.finalProject.enjoin.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.notice.model.vo.Board;
@Repository
public class myPageDaoImpl implements myPageDao{

	//회원 정보 수정
	@Override
	public void updateMember(Member m, SqlSessionTemplate sqlSession) {
		sqlSession.update("myPage.updateMember", m);
	}

	//회원 패스 조회
	@Override
	public void selectPass(Member m, SqlSessionTemplate sqlSession) {
		
		return ;
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.crewBoardList");
	}

	//크루 게시판 상세보기
	@Override
	public Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.crewBoardDetail", boardNo);
	}




}
