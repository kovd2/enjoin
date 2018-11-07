package com.finalProject.enjoin.informBoard.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.informBoard.model.dao.InformBoardDao;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;


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




	@Override
	public int getListCount() throws BoardSelectListException {
		
		int listCount = ibd.getListCount(sqlSession);
		
		return listCount;
	}




	@Override
	public List<Map<String, Object>> selectMainList(PageInfo pi) {
		
		
		List<Map<String,Object>> list =ibd.selectMainList(sqlSession,pi);
		
		return list;
	}

	

	



	
	
	
	
	
}
