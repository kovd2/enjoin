package com.finalProject.enjoin.informBoard.model.service;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.informBoard.model.exception.BoardSelectListException;
import com.finalProject.enjoin.informBoard.model.exception.BoardSelectOneException;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoardFiles;
import com.finalProject.enjoin.informBoard.model.vo.InformComent;
import com.finalProject.enjoin.informBoard.model.vo.PageInfo;
import com.finalProject.enjoin.member.model.vo.Member;

public interface InformBoardService  {

	

	int insertInform(InformBoard ib, ArrayList<InformBoardFiles> fileList);

	int getListCount()throws BoardSelectListException ;

	List<Map<String, Object>> selectMainList(PageInfo pi);

	Map<String, Object> selectBoardDetail(InformBoard ib)throws BoardSelectOneException;

	Map<String, Object> selectFileDetail(InformBoardFiles ibf, InformBoard ib)throws BoardSelectOneException ;

	Map<String, Object> selectMemberDetail(Member loginUser);

	List<Map<String, Object>> insertComent(InformComent ic);

	//공고 이용 신청
	List<Map<String, Object>> applyInformBoard(Map<String, Object> map);

	//패스 수랑 감소
	int updatePassCount(Map<String, Object> map);

	//공고 참여 확인
	int selectRecord(Map<String, Object> map);

	//facilityNo 가져오기
	int selectFacilityNo(Map<String, Object> map);

	//공고 이용하는 회원 조회
	List<Map<String, Object>> selectInformAttendList(Map<String, Object> map);

	
	
	
	
	
	
	

	
	

}
