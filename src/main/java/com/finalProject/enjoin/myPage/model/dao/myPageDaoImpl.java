package com.finalProject.enjoin.myPage.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;
@Repository
public class myPageDaoImpl implements myPageDao{

	//회원 정보 수정
	@Override
	public void updateMember(Member m, SqlSessionTemplate sqlSession) {
		sqlSession.update("myPage.updateMember", m);
	}

	//회원 패스 조회
	@Override
	public List<Pass> selectPass(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectPass", userNo);
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(PageInfo pi, int crewId, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("myPage.crewBoardList", crewId, rowBounds);
	}

	//크루 게시판 상세보기
	@Override
	public Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.crewBoardDetail", boardNo);
	}

	//게시물 갯수
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.getListCount");
	}

	//크루 목록 조회
	@Override
	public List<Crew> selectCrewList(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectCrewList", userNo);
	}

	//가입된 크루 목록 조회
	@Override
	public List<Crew> selectInCrewList(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectInCrewList", userNo);
	}

	//내가 쓴 게시물 조회
	@Override
	public List<Board> selectWritePost(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectWritePost", userNo);
	}


}
