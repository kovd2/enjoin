package com.finalProject.enjoin.informBoard.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.informBoard.model.dao.InformBoardDao;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;


@Service
public class InformBoardServiceImpl implements InformBoardService{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private InformBoardDao ibd;

	@Override
	public int insertInform(InformBoard ib, ArrayList<InformBoardFiles> fileList) {
		int result=ibd.insertInform(sqlSession, ib, fileList);
		return result;
	}
	@Override
	public int getListCount() throws BoardSelectListException {
		int listCount = ibd.getListCount(sqlSession);
		return listCount;
	}
	@Override
	public List<Map<String, Object>> selectMainList(PageInfo pi) {
		List<Map<String,Object>> list =ibd.selectMainList(sqlSession,pi);
		return list;
	}
	@Override
	public Map<String, Object> selectBoardDetail(InformBoard ib) throws BoardSelectOneException {
		Map<String,Object> list =ibd.selectBoardDetail(sqlSession,ib);
		return list;
	}
	@Override
	public Map<String, Object> selectFileDetail(InformBoardFiles ibf, InformBoard ib) throws BoardSelectOneException {
		Map<String,Object> list =ibd.selectFileDetail(sqlSession,ib,ibf);
		return list;
	}
	@Override
	public Map<String, Object> selectMemberDetail(Member loginUser) {
		Map<String,Object> list = ibd.selectMemberDetail(sqlSession,loginUser);
		return list;
	}
	@Override
	public List<Map<String, Object>> insertComent(InformComent ic) {
		
		List<Map<String,Object>> map= ibd.insertComent(sqlSession,ic);
		
		
		
		return map;
	}
	
	//공고 이용 정보 조회
	@Override
	public List<Map<String, Object>> applyInformBoard(Map<String, Object> map) {
		
		return ibd.applyInformBoard(map, sqlSession);
	}
	
	//패스 차감
	@Override
	public int updatePassCount(Map<String, Object> map) {
		int result = ibd.updatePassCount(map, sqlSession);
		int result2 = -99;
		if(result > 0) {
			result2 = ibd.insertPassRecord(map, sqlSession);
			System.out.println("result2 : " + result2);
		}
		
		return result2;
	}
	//공고신청 확인
	@Override
	public int selectRecord(Map<String, Object> map) {
		
		return ibd.selectRecord(map, sqlSession);
	}
	
	//facilityNo가져오기
	@Override
	public int selectFacilityNo(Map<String, Object> map) {
		
		return ibd.selectFacilityNo(map, sqlSession);
	}
	
	//공고 이용하는 회원 조회
	@Override
	public List<Map<String, Object>> selectInformAttendList(Map<String, Object> map) {
		
		return ibd.selectInformAttendList(map, sqlSession);
	}
	
	//공고 상세보기 댓글수 체크
	@Override
	public int selectCheckComentCount(int boardNo) {
		
		return ibd.selectCheckComentCount(boardNo, sqlSession);
	}
	
	



	

	



	
	
	
	
	
}
