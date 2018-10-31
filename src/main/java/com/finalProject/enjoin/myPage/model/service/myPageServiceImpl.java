package com.finalProject.enjoin.myPage.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;
@Service
public class myPageServiceImpl implements myPageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private myPageDao mpd;
	
	//회원 정보 수정
	@Override
	public void updateMember(Member m) {
		mpd.updateMember(m, sqlSession);
	}
	
	//회원 패스 조회
	@Override
	public List<Pass> selectPass(int userNo) {
		
		return mpd.selectPass(userNo, sqlSession);
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(PageInfo pi) {
		
		return mpd.crewBoardList(pi, sqlSession);
	}

	//크루 상세보기 
	@Override
	public Board crewBoardDetail(int boardNo) {
		
		return mpd.crewBoardDetail(boardNo, sqlSession);
	}

	//게시물 갯수 
	@Override
	public int getListCount() {
		
		return mpd.getListCount(sqlSession);
	}



}
