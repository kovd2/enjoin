package com.finalProject.enjoin.crew.model.service;

import java.util.ArrayList;
import java.util.List;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface CrewService {
	//크루생성,크루활동게시판,사진 메소드
	int insertCrew(Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb);
	
	//게시물 리스트 게수
	int getListCount();

	//크루활동 게시판 조회
	List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi);

	




}
