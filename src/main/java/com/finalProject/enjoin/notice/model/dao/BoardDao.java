package com.finalProject.enjoin.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.finalProject.enjoin.notice.model.vo.Board;

public interface BoardDao {

	public List<Board> listAll() throws Exception;
}
