package com.finalProject.enjoin.crew.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.dao.CrewDao;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewComent;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.crew.model.vo.InCrew;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;


@Service
public class CrewServiceImpl implements CrewService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private CrewDao cd;
	
	
	//크루 인서트
	@Override
	public int insertCrew(Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb) {
		
		int result = 0;
		
		int reulst1 = cd.insertCrew(sqlSession,c,at,at1,crb);
		
	
		return result;
	}

	//게시물 갯수
	@Override
	public int getListCount() {
		
		return cd.getListCount(sqlSession);
	}
	
	//크루 활동 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi) {
		
		return cd.crewRecruitmentBoardList(pi,sqlSession);
	}
	//크루 활동 게시판 카테고리 게시물 게수
	@Override
	public int getCrewCategoryListCount(String categoryName) {
		
		return cd.getCrewCategoryListCount(sqlSession,categoryName);
	}
	
	//크루 활동 게시판 카테고리별 조회
	@Override
	public List<CrewRecruitmentBoard> crewCategoryRecruitmentBoardList(PageInfo pi, String categoryName) {
		
		return cd.crewCategoryRecruitmentBoardList(pi,sqlSession,categoryName);
	}
	//크루 활동 게시판 제목별 검색 리스트 조회
	@Override
	public int getCrewTitleListCount(String board_Title) {
		
		return cd.getCrewTitleListCount(sqlSession,board_Title);
	}
	//크루 활동 게시판 지역별 검색 리스트 조회
	@Override
	public int getCrewAreaListCount(String crew_Area) {

		return cd.getCrewAreaListCount(sqlSession,crew_Area);
	}
	
	//크루 활동 게시판 제목별 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewTitleRecruitmentBoardList(PageInfo pi, String board_Title) {
		
		return cd.crewTitleRecruitmentBoardList(pi,sqlSession,board_Title);
	}

	//크루 활동 지역별 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewAreaRecruitmentBoardList(PageInfo pi, String crew_Area) {
		
		return cd.crewAreaRecruitmentBoardList(pi,sqlSession,crew_Area);
	}
	//크루게시판 상세보기 내용
	@Override
	public List<CrewRecruitmentBoard> crewRecruitmentBoardDetailsList(int board_No) {
		
		return cd.crewRecruitmentBoardDetailsList(sqlSession,board_No);
	}
	
	//크루활동게시판 상세보기 사진
	@Override
	public List<Attachment> crewAttachmentDetails(int board_No) {
		
		return cd.crewAttachmentDetails(sqlSession,board_No);
	}
	
	//작성자 사진 조회
	@Override
	public Attachment crewUserPhoto(int user_No) {
		
		return cd.crewUserPhoto(sqlSession,user_No);
	}
	//크루버튼 클릭시 크루 들어가게
	@Override
	public int insertInCrew(InCrew ic) {
		
		return cd.insertInCrew(sqlSession,ic);
	}
	
	//상세보기 클릭시 조회수 증가
	@Override
	public int crewRecruitmentDetailsUpdate(int board_No) {
		
		return cd.crewRecruitmentDetailsUpdate(sqlSession,board_No);
	}
	//일반 댓글 인서트
	@Override
	public int crewAddComent(CrewComent cc) {

		return cd.crewAddComent(sqlSession,cc);
	}
	//자식 댓글 인서트
	@Override
	public int crewAddchildComent(CrewComent cc) {
		
		return cd.crewAddchildComent(sqlSession,cc);
	}
	//크루 댓글 조회
	@Override
	public List<CrewComent> crewComentSelect(int board_No) {
		
		return cd.crewComentSelect(sqlSession,board_No);
	}
	




	

}
