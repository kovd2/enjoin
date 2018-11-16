package com.finalProject.enjoin.myPage.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.crew.model.vo.Attachment;
import com.finalProject.enjoin.myPage.model.vo.Crew;
import com.finalProject.enjoin.myPage.model.vo.JJIM;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.Board;
import com.finalProject.enjoin.myPage.model.vo.Coment;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.myPage.model.vo.inCrew;
@Repository
public class myPageDaoImpl implements myPageDao{

	//회원 정보 수정
	@Override
	public int updateMember(Member m, Attachment at, SqlSessionTemplate sqlSession) {
		
		int result = 0;
		
		int result1 = sqlSession.update("myPage.updateMember", m);
			System.out.println("Dao : " + m);
		if(result1 > 0) {
			int userNo = m.getUserNo();
			System.out.println("userNo : " + userNo);
			
			int result2 = sqlSession.selectOne("myPage.selectPhoto", userNo);
			System.out.println("result2 : " + result2);
			
			if(result2 == 1) {
				
				int result3 = sqlSession.delete("myPage.deletePhoto", userNo);
				
			}
				at.setRef_No(userNo);
				
				int result4 = sqlSession.insert("myPage.insertPhoto", at);
				
				
			System.out.println("프로필 사진 등록 됨");
			
		}
		
		return result;
	}

	//회원 패스 조회
	@Override
	public int selectPass(int userNo, SqlSessionTemplate sqlSession) {
		int pass = sqlSession.selectOne("myPage.selectPass", userNo);
		System.out.println("dao : " + pass);
		return pass;
	}

	//크루 게시판 조회
	@Override
	public List<Board> crewBoardList(PageInfo pi, int crewId, SqlSessionTemplate sqlSession) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("myPage.crewBoardList", crewId, rowBounds);
	}

	//크루 게시판 상세보기
	@Override
	public Board crewBoardDetail(int boardNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.crewBoardDetail", boardNo);
	}

	//게시물 갯수
	@Override
	public int getListCount(int crewId, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.getListCount", crewId);
	}

	//크루 목록 조회
	@Override
	public List<Crew> selectCrewList(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectCrewList", userNo);
	}

	//가입된 크루 목록 조회
	@Override
	public List<Crew> selectInCrewList(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectInCrewList", userNo);
	}

	//내가 쓴 크루모집 게시물 조회
	@Override
	public List<Board> selectWritePost(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectWritePost", userNo);
	}

	//크루 게시물 작성
	@Override
	public int insertCrewBoard(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		int result = 0;
		System.out.println("DAOImpl");
		int result1 = sqlSession.insert("myPage.insertCrewBoard", hmap);
		System.out.println("게시물 등록 완료");
		
		if(result1 > 0) {
			
			sqlSession.insert("myPage.insertBoardImg", hmap);
			
			System.out.println("게시물 등록 & 게시물 이미지 등록 완료");
		}
		
		return result;
	}

	//가입 승인 대기 목록 조회
	@Override
	public List<Crew> selectCrewAcceptList(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectCrewAcceptList", userNo);
	}

	//크루 승인
	@Override
	public int updateCrewApply(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("myPage.updateCrewApply", hmap);
	}

	//크루게시물 댓글 작성
	@Override
	public int insertComent(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
	
		return sqlSession.insert("myPage.insertComent", hmap);
	}

	//내가 쓴 크루게시물 조회
	@Override
	public List<Board> selectWriteCrewBoard(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectWriteCrewBoard", userNo);
	}

	//내가 쓴 댓글 조회
	@Override
	public List<Coment> selectWriteComent(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectWriteComent", userNo);
	}

	//내가 쓴 1:1문의 조회
	@Override
	public List<Board> selectAsBoard(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectAsBoard", userNo);
	}


	//게시물 조회수 증가
	@Override
	public int updateBoardCount(int boardNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("myPage.updateBoardCount", boardNo);
	}

	//찜 목록 조회
	@Override
	public List<JJIM> selectJJIM(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectJJIM", userNo);
	}

	//찜 목록 삭제
	@Override
	public int deleteJJIM(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.delete("myPage.deleteJJIM", hmap);
	}

	//크루원 조회
	@Override
	public List<inCrew> selectCrewMember(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectCrewMember", hmap);
	}

	//이용내역 조회
	@Override
	public List<HashMap<String, Object>> selectUseHistory(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectList("myPage.selectUseHistory", hmap);
	}

	//회원 탈퇴처리
	@Override
	public int deleteMember(String userId, SqlSessionTemplate sqlSession) {
	
		return sqlSession.update("myPage.deleteMember", userId);
	}

	//1:1문의 상세보기
	@Override
	public Board selectAsDetail(int boardNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.selectAsDetail", boardNo);
	}

	//가고싶은 시설 등록 전 조회
	@Override
	public int selectJJIMCheck(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.selectJJIMCheck", hmap);
	}
	
	//가고싶은 시설 등록
	@Override
	public int insertJJIM(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.insert("myPage.insertJJIM", hmap);
	}

	//시설 이용전 패스 유무 확인
	@Override
	public int selectCheckPass(int userNo, SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("myPage.selectCheckPass", userNo);
	}

	//시설이용을 위한 패스 차감
	@Override
	public int updatePassCount(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("myPage.updatePassCount", hmap);
	}

	//시설이용을 위한 패스내역 패스 차감
	@Override
	public int updatePassCountRecord(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("myPage.updatePassCountRecord", hmap);
	}

	@Override
	public int updateUseCode(HashMap<String, Object> hmap, SqlSessionTemplate sqlSession) {
		
		return sqlSession.update("myPage.updateUseCode", hmap);
	}

}
