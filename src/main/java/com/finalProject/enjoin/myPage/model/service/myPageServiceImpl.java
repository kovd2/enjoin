package com.finalProject.enjoin.myPage.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
@Service
public class myPageServiceImpl implements myPageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private myPageDao mpd;
	
	//회원 정보 수정
	@Override
	public int updateMember(Member m, Attachment at) {
		
		int result = 0;
		
		int result1 = mpd.updateMember(m, at, sqlSession);
		
		return result;
	}
	
	//회원 패스 조회
	@Override
	public List<Pass> selectPass(int userNo) {
		
		return mpd.selectPass(userNo, sqlSession);
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(PageInfo pi, int crewId) {
		
		return mpd.crewBoardList(pi, crewId, sqlSession);
	}

	//크루 상세보기 
	@Override
	public Board crewBoardDetail(int boardNo) {
		
		return mpd.crewBoardDetail(boardNo, sqlSession);
	}

	//게시물 갯수 
	@Override
	public int getListCount(int crewId) {
		
		return mpd.getListCount(crewId, sqlSession);
	}

	//크루 목록 조회
	@Override
	public List<Crew> selectCrewList(int userNo) {
		
		return mpd.selectCrewList(userNo, sqlSession);
	}

	//가입한 크루 목록 조회
	@Override
	public List<Crew> selectInCrewList(int userNo) {
		
		return mpd.selectInCrewList(userNo, sqlSession);
	}

	//내가 쓴 게시물 조회
	@Override
	public List<Board> selectWritePost(int userNo) {
		
		return mpd.selectWritePost(userNo, sqlSession);
	}

	//크루 게시물 작성
	@Override
	public int insertCrewBoard(HashMap<String, Object> hmap) {
		
		int result = 0;
		
		int result1 = mpd.insertCrewBoard(hmap, sqlSession);
		
		return result;
	}


}
