package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

public interface InformBoardDao {


	int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, InformBoardFiles ibf,
			ArrayList<InformBoardFiles> fileList);
	
	
	

}
