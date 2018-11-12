package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;

public interface InformBoardDao {


	int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, ArrayList<InformBoardFiles> fileList);

	int getListCount(SqlSessionTemplate sqlSession)throws BoardSelectListException ;

	List<Map<String, Object>> selectMainList(SqlSessionTemplate sqlSession, PageInfo pi);

	Map<String, Object> selectBoardDetail(SqlSessionTemplate sqlSession, InformBoard ib)throws BoardSelectOneException;

	Map<String, Object> selectFileDetail(SqlSessionTemplate sqlSession, InformBoard ib, InformBoardFiles ibf)throws BoardSelectOneException ;

	Map<String, Object> selectMemberDetail(SqlSessionTemplate sqlSession, Member loginUser);

	List<Map<String, Object>> insertComent(SqlSessionTemplate sqlSession, InformComent ic);

	

	
	
	

	

	
	
	
	

}
