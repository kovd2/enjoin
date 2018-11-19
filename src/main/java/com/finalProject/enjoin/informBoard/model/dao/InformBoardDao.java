package com.finalProject.enjoin.informBoard.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;

public interface InformBoardDao {


	int insertInform(SqlSessionTemplate sqlSession, InformBoard ib, ArrayList<InformBoardFiles> fileList);

	int getListCount(SqlSessionTemplate sqlSession)throws BoardSelectListException ;

	List<Map<String, Object>> selectMainList(SqlSessionTemplate sqlSession, PageInfo pi);

	Map<String, Object> selectBoardDetail(SqlSessionTemplate sqlSession, InformBoard ib)throws BoardSelectOneException;

	Map<String, Object> selectFileDetail(SqlSessionTemplate sqlSession, InformBoard ib, InformBoardFiles ibf)throws BoardSelectOneException ;

	Map<String, Object> selectMemberDetail(SqlSessionTemplate sqlSession, Member loginUser);

	List<Map<String, Object>> insertComent(SqlSessionTemplate sqlSession, InformComent ic);

	//공고 이용 신청
	List<Map<String, Object>> applyInformBoard(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//패스 차감
	int updatePassCount(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//이용코드 등록
	int insertPassRecord(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//공고 신청 확인
	int selectRecord(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//facilityNo가져오기
	int selectFacilityNo(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//공고 이용하는 회원 조회	
	List<Map<String, Object>> selectInformAttendList(Map<String, Object> map, SqlSessionTemplate sqlSession);

	

	
	
	

	

	
	
	
	

}
