package com.finalProject.enjoin.crew.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewComent;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.crew.model.vo.InCrew;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Repository
public class CrewDaoImpl implements CrewDao {

	@Override
	public int insertCrew(SqlSessionTemplate sqlSession, Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb){
		int result = 0;
		

		int result1 = sqlSession.insert("Crew.insertCrew",c);
		//커발하여서 현재 크루번호를 받아옴
		if(result1 > 0) {
			int crew_Id = sqlSession.selectOne("Crew.selectCrewId");

			//조회한 크루번호를 객체에 담는다
			c.setCrew_Id(crew_Id);
			crb.setCrew_No(crew_Id);

			//크루게시판등록
			int category_Code = sqlSession.selectOne("Crew.selectCategoryCode", crew_Id);
			
		
			crb.setCategory_No(category_Code);
			
			int result2 = sqlSession.insert("Crew.insertBoard",crb);
			
		
			if(result2 > 0) {
				int board_No = sqlSession.selectOne("Crew.selectBoardId");
				
				at.setRef_No(board_No);
				at1.setRef_No(board_No);
				
				//크루 로고이미지 인서트
				int result3 = sqlSession.insert("Crew.insertRmbAttachment", at);
				
				//크루 이용예정시설 이미지 인서트
				int result4 = sqlSession.insert("Crew.insertRmbAttachment1", at1);
			}
		}

		return result;
	}
	//게시물 갯수
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Crew.getListCount");
	}
	//크루 활동 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Crew.crewRecruitmentBoardList",null, rowBounds);
	}
	//크루 카테고리 게시물 게수 조회
	@Override
	public int getCrewCategoryListCount(SqlSessionTemplate sqlSession, String categoryName) {
		
		return sqlSession.selectOne("Crew.getCrewCategoryListCount",categoryName);
	}
	//크루 카테고리별 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewCategoryRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String categoryName) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Crew.crewCategoryRecruitmentBoardList", categoryName, rowBounds);
	}
	//크루 제목별 게시물 갯수 조회
	@Override
	public int getCrewTitleListCount(SqlSessionTemplate sqlSession, String board_Title) {

		return sqlSession.selectOne("Crew.getCrewTitleListCount",board_Title);
	}
	//크루 지역별 게시물 갯수 조회
	@Override
	public int getCrewAreaListCount(SqlSessionTemplate sqlSession, String crew_Area) {
		
		return sqlSession.selectOne("Crew.getCrewAreaListCount", crew_Area);
	}
	//크루 활동 제목별 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewTitleRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String board_Title) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		
		return sqlSession.selectList("Crew.crewTitleRecruitmentBoardList", board_Title, rowBounds);
	}
	//크루 활동 지역별 게시판 조회
	@Override
	public List<CrewRecruitmentBoard> crewAreaRecruitmentBoardList(PageInfo pi, SqlSessionTemplate sqlSession,
			String crew_Area) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Crew.crewAreaRecruitmentBoardList", crew_Area, rowBounds);
	}
	//크루 활동 게시판 상세보기 데이터조회
	@Override
	public List<CrewRecruitmentBoard> crewRecruitmentBoardDetailsList(SqlSessionTemplate sqlSession, int board_No) {
		
		return sqlSession.selectList("Crew.crewRecruitmentBoardDetailsList",board_No);
	}
	//크루 활동 게시판 사진 조회
	@Override
	public List<Attachment> crewAttachmentDetails(SqlSessionTemplate sqlSession, int board_No) {
		
		return sqlSession.selectList("Crew.crewAttachmentDetails", board_No);
	}
	//크루회원 사진 조회
	@Override
	public Attachment crewUserPhoto(SqlSessionTemplate sqlSession, int board_No) {
		
		return sqlSession.selectOne("Crew.crewUserPhoto", board_No);
	}
	//크루버튼 누를시 크루신청
	@Override
	public int insertInCrew(SqlSessionTemplate sqlSession, InCrew ic) {
		
		return sqlSession.insert("Crew.insertInCrew",ic);
	}
	//크루상세보기 클릭시 조회수증가
	@Override
	public int crewRecruitmentDetailsUpdate(SqlSessionTemplate sqlSession, int board_No) {
		
		return sqlSession.update("Crew.crewRecruitmentDetailsUpdate",board_No);
	}
	//일반 댓글 인서트
	@Override
	public int crewAddComent(SqlSessionTemplate sqlSession, CrewComent cc) {
		
		return sqlSession.insert("Crew.crewAddComent", cc);
	}
	//자식 댓글 인서트
	@Override
	public int crewAddchildComent(SqlSessionTemplate sqlSession, CrewComent cc) {
		
		return sqlSession.insert("Crew.crewAddchildComent",cc);
	}
	//크루 댓글 조회
	@Override
	public List<CrewComent> crewComentSelect(SqlSessionTemplate sqlSession, int board_No) {
		
		return sqlSession.selectList("Crew.crewComentSelect",board_No);
	}
	//선정된 크루원 조회
	@Override
	public List<InCrew> crewInCrewY(SqlSessionTemplate sqlSession, InCrew ic) {
		
		return sqlSession.selectList("Crew.crewInCrewY",ic);
	}
	

}
