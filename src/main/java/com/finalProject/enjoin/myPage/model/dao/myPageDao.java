package com.finalProject.enjoin.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;

public interface myPageDao {

	//회원 정보 수정
	void updateMember(Member m, SqlSessionTemplate sqlSession);
	
	//회원 패스 조회
	List<Pass> selectPass(int userNo, SqlSessionTemplate sqlSession);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi, SqlSessionTemplate sqlSession);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession);

	//게시물 갯수
	int getListCount(SqlSessionTemplate sqlSession);
	

}
