package com.finalProject.enjoin.crew.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.dao.CrewDao;
import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;


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

	

}
