package com.finalProject.enjoin.myPage.model.service;

import java.util.List;

import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;

public interface myPageService {

	//회원 정보 수정
	void updateMember(Member m);
	
	//회원 패스 조회
	List<Pass> selectPass(int userNo);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo);

	//게시물 리스트 갯수
	int getListCount();
	
	
	
	

}
