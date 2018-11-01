package com.finalProject.enjoin.informBoard.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;

public class InformBaordDaoImpl implements InformBoardDao{

	
	@Override
	public int insertInform(InformBoard ib, SqlSessionTemplate sqlSession) {
		
		
		
		
		
		return sqlSession.insert("informBoard.insertMember",ib);
		
		
		
	}
	
	
	
	

}
