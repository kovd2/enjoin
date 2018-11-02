package com.finalProject.enjoin.informBoard.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.informBoard.model.dao.InformBoardDao;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;


@Service
public class InformBoardServiceImpl implements InformBoardService{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private InformBoardDao ibd;
	
	


	@Override
	public void insertInform(InformBoard ib) {
		
		
			
		
		
		
		
		
	}

	
	
	
	
	
}
