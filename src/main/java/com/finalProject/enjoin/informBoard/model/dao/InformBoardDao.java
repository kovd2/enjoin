package com.finalProject.enjoin.informBoard.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

public interface InformBoardDao {


	int insertInformBoard(SqlSessionTemplate sqlSession, InformBoard ib);

	int insertInformFiles(SqlSessionTemplate sqlSession, InformBoardFiles ibf, InformBoard ib);

}
