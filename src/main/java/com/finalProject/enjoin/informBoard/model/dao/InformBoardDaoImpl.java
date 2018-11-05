package com.finalProject.enjoin.informBoard.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;

@Repository
public class InformBoardDaoImpl implements InformBoardDao{

	@Override
	public int insertInformBoard(SqlSessionTemplate sqlSession, InformBoard ib) {
		return sqlSession.insert("Board.insertInformBoard",ib);
	}

	@Override
	public int insertInformFiles(SqlSessionTemplate sqlSession, InformBoardFiles ibf, InformBoard ib) {
		ibf.setFileNo(ib.getBoardNo());
		return sqlSession.insert("Board.insertInformFiles",ibf);
	}

	
	
	
	
	

}
