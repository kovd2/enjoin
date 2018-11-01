package com.finalProject.enjoin.crew.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.dao.CrewDao;
import com.finalProject.enjoin.crew.model.vo.Crew;


@Service
public class CrewServiceImpl implements CrewService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private CrewDao cd;
	
	
	//크루 인서트
	@Override
	public int insertCrew(Crew c) {
		
		int result = 0;
		
		int reulst1 = cd.insertCrew(sqlSession,c);
		
		
		
		return result;
	}

	

}
