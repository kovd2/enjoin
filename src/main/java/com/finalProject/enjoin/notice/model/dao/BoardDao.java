package com.finalProject.enjoin.notice.model.dao;

import java.util.List;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.vo.Board;

public interface BoardDao {

	public List<Board> listAll(PageInfo pi) throws Exception;

	public Board read(int boardNo) throws Exception;

	public int getListCount() throws Exception;

	public void insertBoard(Board b) throws Exception;

	public void updateBoard(Board b) throws Exception;

	public void deleteBoard(Board b) throws Exception;

	public int selectBoard(Board b) throws Exception;
}
