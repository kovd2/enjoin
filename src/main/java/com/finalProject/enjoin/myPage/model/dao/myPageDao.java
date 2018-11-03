package com.finalProject.enjoin.myPage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;

public interface myPageDao {

	//회원 정보 수정
	int updateMember(Member m, Attachment at, SqlSessionTemplate sqlSession);
	
	//회원 패스 조회
	List<Pass> selectPass(int userNo, SqlSessionTemplate sqlSession);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi, int crewId, SqlSessionTemplate sqlSession);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession);

	//게시물 갯수
	int getListCount(int crewId, SqlSessionTemplate sqlSession);

	//크루 목록 조회
	List<Crew> selectCrewList(int userNo, SqlSessionTemplate sqlSession);

	//가입된 크루 목록 조회
	List<Crew> selectInCrewList(int userNo, SqlSessionTemplate sqlSession);

	//내가 쓴 게시물 조회
	List<Board> selectWritePost(int userNo, SqlSessionTemplate sqlSession);


}
