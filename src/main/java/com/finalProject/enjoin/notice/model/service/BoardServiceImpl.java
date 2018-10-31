package com.finalProject.enjoin.notice.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.dao.BoardDao;
import com.finalProject.enjoin.notice.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired	
	private BoardDao bd;
	
	@Override
	public Board read(int boardNo) throws Exception {
		
		return bd.read(boardNo);
	}

	@Override
	public int getListCount() throws Exception {
		
		return bd.getListCount();
	}

	@Override
	public List<Board> listAll(PageInfo pi) throws Exception {
		
		return bd.listAll(pi);
	}


}
