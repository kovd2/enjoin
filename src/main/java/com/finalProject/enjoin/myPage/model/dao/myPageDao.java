package com.finalProject.enjoin.myPage.model.dao;

import java.util.HashMap;
import java.util.List;

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

}
