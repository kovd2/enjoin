package com.finalProject.enjoin.notice.model.service;

import java.util.List;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.vo.Board;

public interface BoardService {

	public List<Board> listAll(PageInfo pi) throws Exception;

	public Board read(int boardNo) throws Exception;

	public int getListCount() throws Exception;

	public void insertBoard(Board b, int userNo) throws Exception;

	public void updateBoard(Board b, int userNo, int boardNo) throws Exception;

	public void deleteBoard(Board b, int userNo, int boardNo) throws Exception;

	public int selectBoard(Board b) throws Exception;

}
