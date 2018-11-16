package com.finalProject.enjoin.myPage.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.Crew;
import com.finalProject.enjoin.myPage.model.vo.JJIM;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.dao.myPageDao;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.Coment;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.inCrew;
@Service
public class myPageServiceImpl implements myPageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private myPageDao mpd;
	
	//회원 정보 수정
	@Override
	public int updateMember(Member m, Attachment at) {
		
		int result = 0;
		
		int result1 = mpd.updateMember(m, at, sqlSession);
		
		return result;
	}
	
	//회원 패스 조회
	@Override
	public int selectPass(int userNo) {
		
		return mpd.selectPass(userNo, sqlSession);
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(PageInfo pi, int crewId) {
		
		return mpd.crewBoardList(pi, crewId, sqlSession);
	}

	//크루 상세보기 
	@Override
	public Board crewBoardDetail(int boardNo) {
		
		return mpd.crewBoardDetail(boardNo, sqlSession);
	}

	//게시물 갯수 
	@Override
	public int getListCount(int crewId) {
		
		return mpd.getListCount(crewId, sqlSession);
	}

	//크루 목록 조회
	@Override
	public List<Crew> selectCrewList(int userNo) {
		
		return mpd.selectCrewList(userNo, sqlSession);
	}

	//가입한 크루 목록 조회
	@Override
	public List<Crew> selectInCrewList(int userNo) {
		
		return mpd.selectInCrewList(userNo, sqlSession);
	}

	//내가 쓴 크루 모집 게시물 조회
	@Override
	public List<Board> selectWritePost(int userNo) {
		
		return mpd.selectWritePost(userNo, sqlSession);
	}

	//크루 게시물 작성
	@Override
	public int insertCrewBoard(HashMap<String, Object> hmap) {
		
		int result = 0;
		
		int result1 = mpd.insertCrewBoard(hmap, sqlSession);
		
		return result;
	}

	//가입 승인 대기 목록 조회
	@Override
	public List<Crew> selectCrewAcceptList(int userNo) {
		
		return mpd.selectCrewAcceptList(userNo, sqlSession);
	}

	//크루 승인
	@Override
	public int updateCrewApply(HashMap<String, Object> hmap) {
		
		return mpd.updateCrewApply(hmap, sqlSession);
	}

	//크루게시물 댓글 작성
	@Override
	public int insertComent(HashMap<String, Object> hmap) {
		
		return mpd.insertComent(hmap, sqlSession);
 
	}

	//내가 쓴 크루게시판 조회
	@Override
	public List<Board> selectWriteCrewBoard(int userNo) {
		
		return mpd.selectWriteCrewBoard(userNo, sqlSession);
	}

	//내가 쓴 댓글 조회
	@Override
	public List<Coment> selectWriteComent(int userNo) {
		
		return mpd.selectWriteComent(userNo, sqlSession);
	}
	
	//내가 쓴 1:1문의 조회
	@Override
	public List<Board> selectAsBoard(int userNo) {
		
		return mpd.selectAsBoard(userNo, sqlSession);
	}

	//게시물 조회수 증가
	@Override
	public int updateBoardCount(int boardNo) {
		
		return mpd.updateBoardCount(boardNo, sqlSession);
	}

	//찜 목록 조회
	@Override
	public List<JJIM> selectJJIM(int userNo) {
		
		return mpd.selectJJIM(userNo, sqlSession);
	}

	//찜 목록 삭제
	@Override
	public int deleteJJIM(HashMap<String, Object> hmap) {
		
		return mpd.deleteJJIM(hmap, sqlSession);	
	}

	//크루원 조회
	@Override
	public List<inCrew> selectCrewMember(HashMap<String, Object> hmap) {
		
		return mpd.selectCrewMember(hmap, sqlSession);
	}

	//이용내역 조회
	@Override
	public List<HashMap<String, Object>> selectUseHistory(HashMap<String, Object> hmap) {
		
		return mpd.selectUseHistory(hmap, sqlSession);
	}

	//회원 탈퇴처리
	@Override
	public int deleteMember(String userId) {
		
		return mpd.deleteMember(userId, sqlSession);
	}

	//1:1문의 상세보기
	@Override
	public Board selectAsDetail(int boardNo) {
		
		return mpd.selectAsDetail(boardNo, sqlSession);
	}

	//가고싶은 시설 등록
	@Override
	public int insertJJIM(HashMap<String, Object> hmap) {
			
		return mpd.insertJJIM(hmap, sqlSession);
	}
	
	//가고싶은 시설 조회
	@Override
	public int selectJJIMCheck(HashMap<String, Object> hmap) {
		
		return mpd.selectJJIMCheck(hmap, sqlSession);
	}

	//시설 이용전 패스 유무 확인
	@Override
	public int selectCheckPass(int userNo) {
		
		return mpd.selectCheckPass(userNo, sqlSession);
	}

	//시설 이용을 위한 패스 차감
	@Override
	public int updatePassCount(HashMap<String, Object> hmap) {
		int result = mpd.updatePassCount(hmap, sqlSession);
		
		if(result > 0) {
			int result2 = mpd.updatePassCountRecord(hmap, sqlSession);
				
			return result;
		}
		return result;
	}

	//이용코드 입력
	@Override
	public int updateUseCode(HashMap<String, Object> hmap) {
		
		return mpd.updateUseCode(hmap, sqlSession);
	}
	
	//시설 이용등록 완료후 정보 띄우기
	@Override
	public List<HashMap<String, Object>> selectUseCode(HashMap<String, Object> hmap) {
		
		return mpd.selectUseCode(hmap, sqlSession);
	}

	

}
