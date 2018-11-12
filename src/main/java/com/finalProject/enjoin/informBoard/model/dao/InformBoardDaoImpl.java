package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;

@Repository
public class InformBoardDaoImpl implements InformBoardDao {

	@Override
	public int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, ArrayList<InformBoardFiles> fileList) {
		int result = 0;
		result = sqlSession.insert("InformBoard.insertInformBoard", ib);
		System.out.println("비교ib"+ib);
		if (result > 0) {
			int Board_no = sqlSession.selectOne("InformBoard.selectBoardNo");
			System.out.println(Board_no);
			for (int i = 0; i < fileList.size(); i++) {
				fileList.get(i).setRefNo(Board_no);
				System.out.println("dao:" + fileList.get(i));
				sqlSession.insert("InformBoard.insertInformFiles" + i, fileList.get(i));
			}
		}
		return 1;
	}
	@Override
	public int getListCount(SqlSessionTemplate sqlSession) throws BoardSelectListException {
		int result = sqlSession.selectOne("InformBoard.getListCount");
		if (result <= 0) {
			throw new BoardSelectListException("메인게시물수 조회 실패");
		}
		return result;
	}
	@Override
	public List<Map<String, Object>> selectMainList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Map<String, Object>> list = null;
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		// 스프링이알아서 로우바운즈쓴데이
		list = sqlSession.selectList("InformBoard.selectBoardList", null, rowBounds);
	System.out.println("DAO:" + list);
		return list;
	}
	@Override
	public Map<String, Object> selectBoardDetail(SqlSessionTemplate sqlSession, InformBoard ib) throws BoardSelectOneException {
		InformBoard selectIb =new InformBoard();
		selectIb.setBoardNo(ib.getBoardNo());
		Map<String,Object> list = sqlSession.selectOne("InformBoard.selectBoardDetail", selectIb);
		//System.out.println("DAO:"+list);
		if(list == null) {
			throw new BoardSelectOneException("게시물 상세보기 실패!");
		}
		return list;
	}
	@Override
	public Map<String, Object> selectFileDetail(SqlSessionTemplate sqlSession,InformBoard ib, InformBoardFiles ibf) throws BoardSelectOneException {
		InformBoardFiles selectIbf = new InformBoardFiles();
		System.out.println(ib.getBoardNo());
		selectIbf.setRefNo(ib.getBoardNo());
		selectIbf.setFileNo(2);
		selectIbf.setFileType("0");
		System.out.println("dao:"+selectIbf);
		Map<String,Object> list2 = sqlSession.selectOne("InformBoard.selectFileDetail",selectIbf);
		System.out.println("dao:"+list2);
		if(list2 == null) {
			throw new BoardSelectOneException("게시물 파일 상세보기 실패");
		}
		
		return list2;
	}
	@Override
	public Map<String, Object> selectMemberDetail(SqlSessionTemplate sqlSession, Member loginUser) {
		Map<String,Object> list = sqlSession.selectOne("InformBoard.selectMemberDetail",loginUser);
		return list;
	}
	@Override
	public List<Map<String, Object>> insertComent(SqlSessionTemplate sqlSession, InformComent ic) {
		
		int result = 0;
		result = sqlSession.insert("InformBoard.insertComent",ic);
		List<Map<String,Object>> map = null;
		
		if (result>0) {
			
			map=sqlSession.selectList("InformBoard.selectComent",ic);
			
		}
		
		return map;
		
	}
	
	


}
