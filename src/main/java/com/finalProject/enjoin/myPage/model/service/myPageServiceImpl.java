package com.finalProject.enjoin.myPage.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;
import com.finalProject.enjoin.notice.model.vo.Board;
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
	public void selectPass(Member m) {
		mpd.selectPass(m, sqlSession);
		
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList() {
		
		return mpd.crewBoardList(sqlSession);
	}

	//크루 상세보기 
	@Override
	public Board crewBoardDetail(int boardNo) {
		
		return mpd.crewBoardDetail(boardNo, sqlSession);
	}

	
	
	
	
}
