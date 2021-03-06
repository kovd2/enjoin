package com.finalProject.enjoin.myPage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.Crew;
import com.finalProject.enjoin.myPage.model.vo.JJIM;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.inCrew;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.Coment;

public interface myPageDao {

	//회원 정보 수정
	int updateMember(Member m, Attachment at, SqlSessionTemplate sqlSession);
	
	//회원 패스 조회
	int selectPass(int userNo, SqlSessionTemplate sqlSession);

	//크루 게시판 조회
	List<Board> crewBoardList(PageInfo pi, int crewId, SqlSessionTemplate sqlSession);

	//크루 게시판 상세보기
	Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession);

	//게시물 갯수
	int getListCount(int crewId, SqlSessionTemplate sqlSession);

	//크루 목록 조회
	List<Crew> selectCrewList(int userNo, SqlSessionTemplate sqlSession);

	//가입된 크루 목록 조회
	List<Crew> selectInCrewList(int userNo, SqlSessionTemplate sqlSession);

	//내가 쓴 크루모집 게시물 조회
	List<Board> selectWritePost(int userNo, SqlSessionTemplate sqlSession);

	//크루 게시물 작성
	int insertCrewBoard(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);
	//크루 게시판 작성(이미지X)
	void insertCrewBoard2(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	
	//가입 승인 대기 목록 조회
	List<Crew> selectCrewAcceptList(int userNo, SqlSessionTemplate sqlSession);

	//크루 승인
	int updateCrewApply(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//크루게시물 댓글 작성
	int insertComent(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//내가 쓴 크루게시판 조회
	List<Board> selectWriteCrewBoard(int userNo, SqlSessionTemplate sqlSession);

	//내가 쓴 댓글 조회
	List<Coment> selectWriteComent(int userNo, SqlSessionTemplate sqlSession);

	//내가 쓴 1:1문의 조회
	List<Board> selectAsBoard(int userNo, SqlSessionTemplate sqlSession);
	
	//게시물 조회수 증가
	int updateBoardCount(int boardNo, SqlSessionTemplate sqlSession);

	//찜 목록 조회
	List<JJIM> selectJJIM(int userNo, SqlSessionTemplate sqlSession);

	//찜 목록 삭제
	int deleteJJIM(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//크루원 조회
	List<inCrew> selectCrewMember(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//이용내역 조회
	List<HashMap<String, Object>> selectUseHistory(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//회원 탈퇴처리
	int deleteMember(String userId, SqlSessionTemplate sqlSession);

	//1:1문의 상세보기
	Board selectAsDetail(int boardNo, SqlSessionTemplate sqlSession);

	//가고싶은 시설 등록전 조회
	int selectJJIMCheck(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);
	
	//가고싶은 시설 등록
	int insertJJIM(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//시설 이용전 패스 유무 확인
	int selectCheckPass(int userNo, SqlSessionTemplate sqlSession);

	//시설 이용을 위한 패스 차감
	int updatePassCount(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//패스 이용내역 insert
	int insertPassRecord(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);
	
	//시설 이용을 위한 패스내역 패스 차감
	int updatePassCountRecord(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//이용코드 입력
	int updateUseCode(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//시설 이용등록 완료후 정보 띄우기
	List<HashMap<String, Object>> selectUseCode(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//시설 이용전 확인
	int selectRecord(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession);

	//이용코드 조회후 뿌리기
	List<HashMap<String, Object>> selectUseCodeList(int userNo, SqlSessionTemplate sqlSession);
	
	//게시판 번호 조회
	int selectBoard_No(int crewId, SqlSessionTemplate sqlSession);

	//크루 현재인원 추가
	int updateCrewBoard(int board_No, SqlSessionTemplate sqlSession);

	//프로필 사진 없을때 회원 정보 수정
	void updateMember2(Member m, SqlSessionTemplate sqlSession);

	//결제내역 조회
	List<Map<String, Object>> selectPaymentHistory(Map<String, Object> map, SqlSessionTemplate sqlSession);

	//시설이용 확인
	int selectUseCheck(Map<String, Object> map, SqlSessionTemplate sqlSession);
	

}
