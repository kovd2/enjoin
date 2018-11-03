package com.finalProject.enjoin.myPage.model.service;

import java.util.List;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.Pass;
import com.finalProject.enjoin.myPage.model.vo.Board;

public interface myPageService {

	//회원 정보 수정
	int updateMember(Member m, Attachment at);
	
	//회원 패스 조회
	List<Pass> selectPass(int userNo);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi, int crewId);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo);

	//게시물 리스트 갯수
	int getListCount(int crewId);
	
	//크루 목록 조회
	List<Crew> selectCrewList(int userNo);
	
	//가입한 크로 목록 조회
	List<Crew> selectInCrewList(int userNo);

	//내가 쓴 게시물 조회
	List<Board> selectWritePost(int userNo);

}
