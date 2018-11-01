package com.finalProject.enjoin.informBoard.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;

public interface InformBoardDao {

	int  insertInform(InformBoard ib, SqlSessionTemplate sqlSession);
	
	

}
