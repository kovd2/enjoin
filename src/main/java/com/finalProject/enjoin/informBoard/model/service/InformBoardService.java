package com.finalProject.enjoin.informBoard.model.service;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;

public interface InformBoardService  {

	

	int insertInform(InformBoard ib, ArrayList<InformBoardFiles> fileList);

	int getListCount()throws BoardSelectListException ;

	List<Map<String, Object>> selectMainList(PageInfo pi);

	Map<String, Object> selectBoardDetail(InformBoard ib)throws BoardSelectOneException;

	Map<String, Object> selectFileDetail(InformBoardFiles ibf, InformBoard ib)throws BoardSelectOneException ;

	Map<String, Object> selectMemberDetail(Member loginUser);

	

	
	

}
