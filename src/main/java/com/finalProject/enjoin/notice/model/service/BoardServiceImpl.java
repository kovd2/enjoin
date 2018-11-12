package com.finalProject.enjoin.notice.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.dao.BoardDao;
import com.finalProject.enjoin.notice.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{
	
	//의존성 주입
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

	@Override
	public int insertBoard(Board b, int userNo, Attachment at) throws Exception {
		
		
		
		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setUserNo(userNo);
		
		int result = bd.insertBoard(b, at);
		
		return result;
	}

	@Override
	public int insertFAQ(Board b, int userNo, String category) throws Exception {

		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setUserNo(userNo);
		b.setFaqCategory(category);
		
		int result = bd.insertFAQ(b);
		
		return result;
	}

	@Override
	public List<Board> faqListAll(PageInfo pi) throws Exception {
		
		return bd.faqListAll(pi);
	}

	@Override
	public int getListCount2() throws Exception {
		
		return bd.getListCount2();
	}

	@Override
	public Board faqRead(int boardNo) throws Exception {
		
		return bd.faqRead(boardNo);
	}

	@Override
	public void updateFAQ(Board b, int userNo, int boardNo, String category) throws Exception {
		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		
		b.setUserNo(userNo);
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setBoardNo(boardNo);
		b.setFaqCategory(category);
		
		bd.updateFAQ(b);
		
	}

	@Override
	public void deleteFAQ(Board b, int userNo, int boardNo) throws Exception {
		b.setBoardNo(boardNo);
		b.setUserNo(userNo);
		
		bd.deleteFAQ(b);
		
	}

	@Override
	public List<Board> search(String keyword) throws Exception {
		
		return bd.search(keyword);
	}

	@Override
	public Board userRead(int boardNo) throws Exception {
		
		return bd.userRead(boardNo);
	}

	@Override
	public int insertContact(Board b, int userNo, Attachment at, String category) {
		
		String title = b.getBoardTitle();
		String content = b.getBoardContent();
		
		b.setBoardTitle(title);
		b.setBoardContent(content);
		b.setUserNo(userNo);
		b.setFaqCategory(category);
		
		int result = bd.insertContact(b, at);
		
		return result;

	}


}
