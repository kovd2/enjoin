package com.finalProject.enjoin.notice.model.service;

import java.util.List;

import com.finalProject.enjoin.notice.model.vo.Board;

public interface BoardService {

	public List<Board> listAll() throws Exception;

	public Board read(int boardNo) throws Exception;

}
