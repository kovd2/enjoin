package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;

public interface InformBoardDao {


	int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, ArrayList<InformBoardFiles> fileList);

	int getListCount(SqlSessionTemplate sqlSession)throws BoardSelectListException ;

	List<Map<String, Object>> selectMainList(SqlSessionTemplate sqlSession, PageInfo pi);

	

	
	
	
	

}
