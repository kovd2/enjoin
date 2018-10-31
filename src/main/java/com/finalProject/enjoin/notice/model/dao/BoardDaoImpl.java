package com.finalProject.enjoin.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.notice.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired	
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Board read(int boardNo) throws Exception {
		return sqlSession.selectOne("Board.view", boardNo);
	}

	@Override
	public int getListCount() throws Exception {
		
		return sqlSession.selectOne("Board.getListCount");
	}

	@Override
	public List<Board> listAll(PageInfo pi) throws Exception {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Board.listAll", null, rowBounds);
	}


}
