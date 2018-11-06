package com.finalProject.enjoin.informBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.informBoard.model.dao.InformBoardDao;

import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;


@Service
public class InformBoardServiceImpl implements InformBoardService{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private InformBoardDao ibd;



	@Override
	public int insertInform(InformBoard ib, ArrayList<InformBoardFiles> fileList) {
		
		int result=ibd.insertInform(sqlSession, ib, fileList);
		
		return result;
	}

	

	



	
	
	
	
	
}
