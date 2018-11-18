package com.finalProject.enjoin.myPage.model.service;

import java.util.HashMap;
import java.util.List;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.Crew;
import com.finalProject.enjoin.myPage.model.vo.JJIM;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.inCrew;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.Coment;

public interface myPageService {

	//회원 정보 수정
	int updateMember(Member m, Attachment at);
	
	//회원 패스 조회
	int selectPass(int userNo);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi, int crewId);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo);

	//게시물 리스트 갯수
	int getListCount(int crewId);
	
	//크루 목록 조회
	List<Crew> selectCrewList(int userNo);
	
	//가입한 크로 목록 조회
	List<Crew> selectInCrewList(int userNo);

	//내가 쓴 크루 모집 게시물 조회
	List<Board> selectWritePost(int userNo);

	//크루 게시물 작성
	int insertCrewBoard(HashMap<String, Object> hmap);

	//가입 승인 대기 목록 조회
	List<Crew> selectCrewAcceptList(int userNo);

	//크루 승인
	int updateCrewApply(HashMap<String, Object> hmap);

	//크루게시물 댓글 작성
	int insertComent(HashMap<String, Object> hmap);
	
	//내가 쓴 크루게시판 조회
	List<Board> selectWriteCrewBoard(int userNo);

	//내가 쓴 댓글 조회
	List<Coment> selectWriteComent(int userNo);

	//1:1문의 조회
	List<Board> selectAsBoard(int userNo);
	
	//게시물 조회수 증가
	int updateBoardCount(int boardNo);

	//찜 목록 조회
	List<JJIM> selectJJIM(int userNo);

	//찜 목록 삭제
	int deleteJJIM(HashMap<String, Object> hmap);

	//크루원 조회
	List<inCrew> selectCrewMember(HashMap<String, Object> hmap);

	//이용내역조회
	List<HashMap<String, Object>> selectUseHistory(HashMap<String, Object> hmap);

	//회원 탈퇴처리
	int deleteMember(String userId);

	//1:1문의 상세보기
	Board selectAsDetail(int boardNo);

	//가고싶은 시설 등록
	int insertJJIM(HashMap<String, Object> hmap);

	//가고싶은 시설 등록 확인
	int selectJJIMCheck(HashMap<String, Object> hmap);

	//시설 이용전 패스 유무 확인
	int selectCheckPass(int userNo);

	//시설 이용을 위한 패스 차감
	int updatePassCount(HashMap<String, Object> hmap);
	
	//패스 이용내역 insert
	//int insertPassRecord(HashMap<String, Object> hmap);

	//이용코드 입력
	int updateUseCode(HashMap<String, Object> hmap);

	//시설 이용등록 완료후 정보 띄우기
	List<HashMap<String, Object>> selectUseCode(HashMap<String, Object> hmap);

	//시설 이용전 확인
	int selectRecord(HashMap<String, Object> hmap);

	//이용코드 조회후 뿌리기
	List<HashMap<String, Object>> selectUseCodeList(int userNo);

	//크루게시판번호 조회
	int selectBoard_No(int crewId);
	
	//크루 현재인원 추가
	int updateCrewBoard(int board_No);



}
