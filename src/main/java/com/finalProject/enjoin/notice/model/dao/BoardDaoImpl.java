package com.finalProject.enjoin.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
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

	@Override
	public int insertBoard(Board b, Attachment at) throws Exception {
		int result = 0;
		
		int result1 = sqlSession.insert("Board.insertBoard", b);
		
		int result100 = sqlSession.selectOne("Board.selectBoard", b);
		
		
		b.setBoardNo(result100);
		
		if(result1 > 0) {
			
			int boardNo = b.getBoardNo();
			
			int result2 = sqlSession.selectOne("Board.selectPhoto", boardNo);
			
			if(result2 == 1) {
				
				int result3 = sqlSession.delete("Board.deletePhoto", boardNo);
			}
			
			at.setRef_No(boardNo);
			
			int result4 = sqlSession.insert("Board.insertPhoto", at);
		}
		
		
		return result;
	}

	@Override
	public void updateBoard(Board b) throws Exception {
		
		sqlSession.update("Board.updateBoard", b);
		
	}

	@Override
	public void deleteBoard(Board b) throws Exception {
		
		sqlSession.update("Board.deleteBoard", b);
	}

	@Override
	public int selectBoard(Board b) throws Exception {
		
		
		return sqlSession.selectOne("Board.selectBoard", b);
		
	}

}
