package com.finalProject.enjoin.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.Coment;
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

	@Override
	public int insertFAQ(Board b) throws Exception {
		
		return sqlSession.insert("Board.insertFAQ", b);
		
	}

	@Override
	public List<Board> faqListAll(PageInfo pi) throws Exception {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Board.faqListAll", null, rowBounds);
	}

	@Override
	public int getListCount2() throws Exception {
		return sqlSession.selectOne("Board.getListCount2");
	}

	@Override
	public Board faqRead(int boardNo) {
		
		return sqlSession.selectOne("Board.faqView", boardNo);
	}

	@Override
	public void updateFAQ(Board b) throws Exception {
		sqlSession.update("Board.updateFAQ", b);
		
	}

	@Override
	public void deleteFAQ(Board b) throws Exception {
		sqlSession.update("Board.deleteFAQ", b);
		
	}

	@Override
	public List<Board> search(String keyword) throws Exception {		
		return sqlSession.selectList("Board.search", keyword);
	}

	@Override
	public Board userRead(int boardNo) throws Exception {
		
		return sqlSession.selectOne("Board.userRead", boardNo);
	}

	@Override
	public int insertContact(Board b, Attachment at) {
		
		int result = 0;
		
		int result1 = sqlSession.insert("Board.insertContact", b);
		
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
	public void insertContact2(Board b) {
		
		sqlSession.insert("Board.insertContact", b);
	}

	@Override
	public int getListCount3() {
		
		return sqlSession.selectOne("Board.getListCount3");
	}

	@Override
	public List<Board> ContactlistAll(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Board.contactListAll", null, rowBounds);
	}

	@Override
	public Board adminContactDetail(int boardNo) {
		
		

		return sqlSession.selectOne("Board.adminContactDetail", boardNo);
	}

	@Override
	public int insertContactReply(String comentContent, int boardNo, int userNo) {
		
		Coment c = new Coment();
		
		c.setBoardNo(boardNo);
		c.setComentContent(comentContent);
		c.setUserNo(userNo);
		
		return sqlSession.insert("Board.adminContactReply", c);
	}

	@Override
	public int updateContactStatus(int boardNo) {

		Board b = new Board();
		
		b.setBoardNo(boardNo);
		
		return sqlSession.update("Board.updateContactStatus", b);
	}

	@Override
	public Coment comentCheck(int boardNo) {

		Coment c = new Coment();
		
		c.setBoardNo(boardNo);
		
		return sqlSession.selectOne("Board.comentCheck", c);
	}


}
