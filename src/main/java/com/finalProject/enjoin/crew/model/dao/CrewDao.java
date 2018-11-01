package com.finalProject.enjoin.crew.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.crew.model.vo.Crew;

public interface CrewDao {
	//크루 인서트
	int insertCrew(SqlSessionTemplate sqlSession, Crew c);

}
