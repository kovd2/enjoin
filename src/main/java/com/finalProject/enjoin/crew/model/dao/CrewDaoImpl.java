package com.finalProject.enjoin.crew.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Crew;

@Repository
public class CrewDaoImpl implements CrewDao {

	@Override
	public int insertCrew(SqlSessionTemplate sqlSession, Crew c){
		int result = 0;
		System.out.println("Dao Crew" + c);
		
		int result1 = sqlSession.insert("Crew.insertCrew",c);
		//커발하여서 현재 크루번호를 받아옴
		
		if(result1 > 0) {
		int crew_Id = sqlSession.selectOne("Crew.selectCrewId");
		
		System.out.println("crew_id" + crew_Id);
		c.setCrew_Id(crew_Id);
		
		
		}
	
		return result;
	}

}
