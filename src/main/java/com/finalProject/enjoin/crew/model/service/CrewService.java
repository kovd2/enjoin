package com.finalProject.enjoin.crew.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewComent;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.crew.model.vo.InCrew;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface CrewService {
	//크루생성,크루활동게시판,사진 메소드
	int insertCrew(Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb);
	
	//게시물 리스트 게수
	int getListCount();

	//크루활동 게시판 조회
	List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi);

	//크루 활동게시판 카테고리 리스트 게수
	int getCrewCategoryListCount(String categoryName);

	//크루 게시판 카테고리별 게시판 조회
	List<CrewRecruitmentBoard> crewCategoryRecruitmentBoardList(PageInfo pi, String categoryName);

	//크루 활동게시판 제목 리스트 게수
	int getCrewTitleListCount(String board_Title);

	//크루 활동게시판 지역 리스트 게수
	int getCrewAreaListCount(String crew_Area);

	//크루 활동게시판 제목별 게시판 조회
	List<CrewRecruitmentBoard> crewTitleRecruitmentBoardList(PageInfo pi, String board_Title);

	//크루 활동게시판 지역별 게시판 조회
	List<CrewRecruitmentBoard> crewAreaRecruitmentBoardList(PageInfo pi, String crew_Area);
	
	//크루 활동게시판 상세보기 (게시판내용)
	List<CrewRecruitmentBoard> crewRecruitmentBoardDetailsList(int board_No);

	//크루 활동게시판 상세 사진 보기(게시판)
	List<Attachment> crewAttachmentDetails(int board_No);

	//작성자 사진 조회
	Attachment crewUserPhoto(int board_No);

	//크루신청 버튼 클릭시 increw로 들어가는것	
	int insertInCrew(InCrew ic);
	
	//크루상세보기 클릭시 조회수증가
	int crewRecruitmentDetailsUpdate(int board_No);
	
	//일반댓글 인서트
	int crewAddComent(CrewComent cc);
	
	//자식댓글 인서트
	int crewAddchildComent(CrewComent cc);
	
	//크루 댓글 조회
	List<CrewComent> crewComentSelect(int board_No);
	
	//선정된 크루원 조회
	List<InCrew> crewInCrewY(int crew_Id);
	
	//만든 크루에대해서 조회해서 입력폼에뿌려주기위해 만듬
	List<Crew> crewInformation(int userNo);

	//크루 활동 게시판 인서트
	int insertCrewActivity(CrewActivityBoard cab, Attachment at, Attachment at1, Attachment at3, Attachment at4);
	
	

	




}
