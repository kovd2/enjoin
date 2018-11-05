package com.finalProject.enjoin.informBoard.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.informBoard.model.dao.InformBoardDao;
import com.finalProject.enjoin.informBoard.model.exception.InsertInformException;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;


@Service
public class InformBoardServiceImpl implements InformBoardService{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private InformBoardDao ibd;

	@Override
	public int insertInform(InformBoard ib, InformBoardFiles ibf) throws InsertInformException {
		
		int result1 = ibd.insertInformBoard(sqlSession, ib);
		
		if(result1>0) {
			
			int result2 = ibd.insertInformFiles(sqlSession,ibf,ib);
			
			return result2;
		}else {
			
				throw new InsertInformException("등록실패");
		}
		
	}
	
	



	
	
	
	
	
}
