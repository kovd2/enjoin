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

	@Override
	public void insertBoard(Board b, int userNo) throws Exception {
		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setUserNo(userNo);
		
		bd.insertBoard(b);
	}
 
	@Override
	public void updateBoard(Board b, int userNo, int boardNo) throws Exception {
		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		b.setUserNo(userNo);
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setBoardNo(boardNo);
		
		bd.updateBoard(b);		
	}

	@Override
	public void deleteBoard(Board b, int userNo, int boardNo) throws Exception {
		
		b.setBoardNo(boardNo);
		b.setUserNo(userNo);
		
		bd.deleteBoard(b);
	}

	@Override
	public int selectBoard(Board b) throws Exception {
		return bd.selectBoard(b);
	
	}


}
