package com.finalProject.enjoin.notice.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.notice.model.dao.BoardDao;
import com.finalProject.enjoin.notice.model.vo.Board;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired	
	private BoardDao bd;
	
	@Override
	public List<Board> listAll() throws Exception {
		
		return bd.listAll();
	}

}
