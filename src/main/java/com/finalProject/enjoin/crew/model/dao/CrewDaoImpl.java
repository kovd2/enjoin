package com.finalProject.enjoin.crew.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;

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
			int result2 = sqlSession.insert("Crew.insertBoard",crb);
			
			System.out.println("등록됨??");

			if(result2 > 0) {
				int board_No = sqlSession.selectOne("Crew.selectBoardId");
				
				System.out.println("board_No" + board_No);
				
				at.setRef_No(board_No);
				at1.setRef_No(board_No);
				
				//크루 로고이미지 인서트
				int result3 = sqlSession.insert("Crew.insertRmbAttachment", at);
				
				int result4 = sqlSession.insert("Crew.insertRmbAttachment1", at1);
			}


				//크루 이용예정시설 이미지 인서트



		}

		return result;
	}

}
