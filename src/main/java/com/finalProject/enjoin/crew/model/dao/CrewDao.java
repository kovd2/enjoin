package com.finalProject.enjoin.crew.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewComent;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.crew.model.vo.InCrew;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface CrewDao {
	//크루 인서트
	int insertCrew(SqlSessionTemplate sqlSession, Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb);
	
	//게시물 갯수
	int getListCount(SqlSessionTemplate sqlSession);

	//크루활동 게시판 조회
	List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession);

	//크루 카테고리 게시물 갯수
	int getCrewCategoryListCount(SqlSessionTemplate sqlSession, String categoryName);

	//크루활동 게시판 카테고리별 검색 조회
	List<CrewRecruitmentBoard> crewCategoryRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String categoryName);

	//크루 제목별 게시물 갯수
	int getCrewTitleListCount(SqlSessionTemplate sqlSession, String board_Title);

	//크루 지역별 게시물 갯수
	int getCrewAreaListCount(SqlSessionTemplate sqlSession, String crew_Area);
	
	//크루활동 게시판 제목별 검색 조회
	List<CrewRecruitmentBoard> crewTitleRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String board_Title);
	
	//크루활동 지역별 게시판 조회
	List<CrewRecruitmentBoard> crewAreaRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String crew_Area);
	
	//크루활동게시판 상세보기 데이터
	List<CrewRecruitmentBoard> crewRecruitmentBoardDetailsList(SqlSessionTemplate sqlSession, int board_No);
	
	//크루활동 게시판 상세보기 사진
	List<Attachment> crewAttachmentDetails(SqlSessionTemplate sqlSession, int board_No);
	
	//작성자 사진정보 조회
	Attachment crewUserPhoto(SqlSessionTemplate sqlSession, int board_No);

	//크루버튼 누를시 크루 신청 인서트
	int insertInCrew(SqlSessionTemplate sqlSession, InCrew ic);
	
	//상세보기 클릭시 조회수 증가
	int crewRecruitmentDetailsUpdate(SqlSessionTemplate sqlSession, int board_No);
	
	//일반 댓글 인서트
	int crewAddComent(SqlSessionTemplate sqlSession, CrewComent cc);
	
	//자식 댓글 인서트
	int crewAddchildComent(SqlSessionTemplate sqlSession, CrewComent cc);
	
	//크루 댓글 조회
	List<CrewComent> crewComentSelect(SqlSessionTemplate sqlSession, int board_No);
	
	//선정된 크루원 조회
	List<InCrew> crewInCrewY(SqlSessionTemplate sqlSession, InCrew ic);
	
	

}
