package com.finalProject.enjoin.crew.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface CrewDao {
	//크루 인서트
	int insertCrew(SqlSessionTemplate sqlSession, Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb);
	
	//게시물 갯수
	int getListCount(SqlSessionTemplate sqlSession);

	//크루활동 게시판 조회
	List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession);

}
