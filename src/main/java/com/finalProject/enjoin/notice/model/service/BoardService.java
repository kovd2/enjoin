package com.finalProject.enjoin.notice.model.service;

import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.vo.Board;

public interface BoardService {

	public List<Board> listAll(PageInfo pi) throws Exception;

	public Board read(int boardNo) throws Exception;

	public int getListCount() throws Exception;

	public int insertBoard(Board b, int userNo, Attachment at) throws Exception;

	public void updateBoard(Board b, int userNo, int boardNo) throws Exception;

	public void deleteBoard(Board b, int userNo, int boardNo) throws Exception;

	public int selectBoard(Board b) throws Exception;

	public int insertFAQ(Board b, int userNo, String category) throws Exception;

	public List<Board> faqListAll(PageInfo pi) throws Exception;

	public int getListCount2() throws Exception;

	public Board faqRead(int boardNo) throws Exception;

	public void updateFAQ(Board b, int userNo, int boardNo, String category) throws Exception;

	public void deleteFAQ(Board b, int userNo, int boardNo) throws Exception;

	public List<Board> search(String keyword) throws Exception;

	public Board userRead(int boardNo) throws Exception;




}
