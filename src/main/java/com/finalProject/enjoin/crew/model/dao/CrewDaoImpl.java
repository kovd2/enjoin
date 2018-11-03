package com.finalProject.enjoin.crew.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Repository
public class CrewDaoImpl implements CrewDao {

	@Override
	public int insertCrew(SqlSessionTemplate sqlSession, Crew c, Attachment at, Attachment at1, CrewRecruitmentBoard crb){
		int result = 0;
		System.out.println("Dao Crew" + c);

		int result1 = sqlSession.insert("Crew.insertCrew",c);
		//커발하여서 현재 크루번호를 받아옴
		if(result1 > 0) {
			int crew_Id = sqlSession.selectOne("Crew.selectCrewId");

			System.out.println("crew_id" + crew_Id);

			//조회한 크루번호를 객체에 담는다
			c.setCrew_Id(crew_Id);
			crb.setCrew_No(crew_Id);

			//크루게시판등록
			int category_Code = sqlSession.selectOne("Crew.selectCategoryCode", crew_Id);
			
			System.out.println("category_Code : " + category_Code);
			
			crb.setCategory_No(category_Code);
			
			int result2 = sqlSession.insert("Crew.insertBoard",crb);
			
			System.out.println("등록됨??");

			if(result2 > 0) {
				int board_No = sqlSession.selectOne("Crew.selectBoardId");
				
				System.out.println("board_No" + board_No);
				
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

}
