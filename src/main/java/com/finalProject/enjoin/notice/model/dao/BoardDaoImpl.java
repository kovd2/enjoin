package com.finalProject.enjoin.notice.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.notice.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Board> listAll() throws Exception {
		
		return sqlSession.selectList("Board.listAll");
	}

}
