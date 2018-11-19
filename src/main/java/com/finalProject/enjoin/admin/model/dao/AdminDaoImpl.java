package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.admin.model.vo.AdminInformBoard;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Repository
public class AdminDaoImpl implements AdminDao {
	//일반회원 회원수 조회
	@Override
	public int getListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount");
	}
	//일반회원 정보 조회
	@Override
	public List<Member> memberSelect(SqlSession sqlSession, PageInfo pi) {
			
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.memberSelect", null, rowBounds);
	}
	//기업회원 회원수 조회
	@Override
	public int getListCount1(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getListCount1");
	}
	//기업 회원 정보 조회
	@Override
	public List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		
		return sqlSession.selectList("Admin.companyMemberSelect", null, rowBounds) ;
	}
	//일반회원 회원번호로 조회
	@Override
	public List<Member> userNoSelect(SqlSession sqlSession, int userNo) {
		
		return sqlSession.selectList("Admin.userNoSelect", userNo);
	}
	//일반회원 아이디를 통한 조회
	@Override
	public List<Member> userIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.userIdSelect", userId);
	}
	
	//동일이름 리스트 갯수 조회
	public int getMemberNameListCount(SqlSession sqlSession, String userName) {
		
		return sqlSession.selectOne("Admin.getMemberNameListCount", userName);
	}
	//일반회원 이름을 통한 조회
	@Override
	public List<Member> userNameSelect(SqlSession sqlSession, String userName, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.userNameSelect", userName, rowBounds);
	}
	//일반회원 전화번호를 통한 조회
	@Override
	public List<Member> userPhoneSelect(SqlSession sqlSession, String phone) {
		
		
		return sqlSession.selectList("Admin.userPhoneSelect", phone);
	}
	//이메일을 통한 조회
	@Override
	public List<Member> userEmailSelect(SqlSession sqlSession, String email) {
		
		return sqlSession.selectList("Admin.userEmailSelect",email);
	}
	//유저 블랙처리
	@Override
	public int updateStatusMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateStatusMember",userNo);
	}
	//기업상호명을 통한조회
	@Override
	public List<Member> copNameSelect(SqlSession sqlSession, String copName) {

		return sqlSession.selectList("Admin.copNameSelect",copName);
	}
	//기업 유저아이디를 통한 조회
	@Override
	public List<Member> copUserIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.copUserIdSelect", userId);
	}
	//기업 사업자 등록번호를 통한 조회
	@Override
	public List<Member> copNoSelect(SqlSession sqlSession, String copNo) {
		
		return sqlSession.selectList("Admin.copNoSelect",copNo);
	}
	//기업 담당자 이메일을 통한 조회
	@Override
	public List<Member> managerEmailSelect(SqlSession sqlSession, String managerEmail) {
		
		return sqlSession.selectList("Admin.managerEmailSelect",managerEmail);
	}
	//기업회원 블랙처리
	@Override
	public int updateCopStatusMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateCopStatusMember", userNo);
	}
	//블랙회원 리스트 갯수
	@Override
	public int getBlackListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getBlackListCount");
	}
	//블랙일반회원 정보 조회
	@Override
	public List<Member> selectBlackMemberList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectBlackMemberList", null, rowBounds);
	}
	//블랙 기업회원 리스트 갯수 
	@Override
	public int getBlackListCount1(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getBlackListCount1");
	}
	//블랙 기업회원 정보 조회
	@Override
	public List<Member> companyBlackMemberSelect(SqlSession sqlSession, PageInfo pi1) {
		
		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		return sqlSession.selectList("Admin.companyBlackMemberSelect", null, rowBounds);
	}
	//블랙 일반회원 해제 처리
	@Override
	public int updateStatusBlackMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateStatusBlackMember", userNo);
	}
	//블랙 기업회원 해제 처리
	@Override
	public int updateCopStatusBlackMember(SqlSession sqlSession, int userNo) {
		
		return sqlSession.update("Admin.updateCopStatusBlackMember", userNo);
	}
	//블랙회원 아이디 검색
	@Override
	public List<Member> userBlackIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.userBlackIdSelect", userId);
	}
	//블랙 일반 회원 이름 리스트 갯수 조회
	@Override
	public int getBlackMemberNameListCount(SqlSession sqlSession, String userName) {
		
		return sqlSession.selectOne("Admin.getBlackMemberNameListCount", userName);
	}
	//블랙 일반 회원 이름으로 정보 조회
	@Override
	public List<Member> userBlackNameSelect(SqlSession sqlSession, String userName, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.userBlackNameSelect", userName, rowBounds);
	}
	//블랙 회원 상호명으로 정보 조회
	@Override
	public List<Member> copNameBlackSelect(SqlSession sqlSession, String copName) {
		
		return sqlSession.selectList("Admin.copNameBlackSelect",copName);
	}
	//블랙 기업회원 이름으로 정보 조회
	@Override
	public List<Member> blackCopUserIdSelect(SqlSession sqlSession, String userId) {
		
		return sqlSession.selectList("Admin.blackCopUserIdSelect", userId);
	}
	//크루 리스트 갯수 조회
	@Override
	public int getCrewListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getCrewListCount");
	}
	//크루 리스트 조회
	@Override
	public List<Crew> crewListSelect(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.crewListSelect", null, rowBounds);
	}
	//블랙 크루 리스트 갯수 조회
	@Override
	public int getCrewBlackListCount1(SqlSession sqlSession) {

		return sqlSession.selectOne("Admin.getCrewBlackListCount1");
	}
	//블랙 크루 정보 조회
	@Override
	public List<Crew> blackCrewListSelect(SqlSession sqlSession, PageInfo pi1) {

		int offset = (pi1.getCurrentPage() - 1) * pi1.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi1.getLimit());
		
		return sqlSession.selectList("Admin.blackCrewListSelect", null, rowBounds);
	}
	//크루를 블랙상태로 만듬
	@Override
	public int updateStatusBlackCrew(SqlSession sqlSession, int crew_Id) {
		
		return sqlSession.update("Admin.updateStatusBlackCrew", crew_Id);
	}
	//크루의 블랙 상태를 풀음
	@Override
	public int updateStatusCrew(SqlSession sqlSession, int crew_Id) {
		
		return sqlSession.update("Admin.updateStatusCrew", crew_Id);
	}
	//크루명을 통한 조회
	@Override
	public List<Crew> crewNameSelect(SqlSession sqlSession, String crew_Name) {
		
		return sqlSession.selectList("Admin.crewNameSelect", crew_Name);
	}
	//크루장을 통한 조회
	@Override
	public List<Crew> crewBoassSelect(SqlSession sqlSession, String user_Id) {
		
		return sqlSession.selectList("Admin.crewBoassSelect", user_Id);
	}
	//블랙크루 크루명을 통한 조회
	@Override
	public List<Crew> crewBlackName(SqlSession sqlSession, String crew_Name) {
		
		return sqlSession.selectList("Admin.crewBlackName",crew_Name);
	}
	//블랙크루 크루장을 통한 조회
	@Override
	public List<Crew> crewBlackUser(SqlSession sqlSession, String user_Id) {
		
		return sqlSession.selectList("Admin.crewBlackUser",user_Id);
	}
	//크루모집게시판 게시글 갯수 조회
	@Override
	public int getCrtListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getCrtListCount");
	}
	//크루 모집 게시판 정보 조회
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentBoardList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectCrewRecruitmentBoardList", null, rowBounds);
	}
	//크루 모집 게시판 관리자 권한으로 삭제처리
	@Override
	public int updateAdminCrewRecruitmentStatus(SqlSession sqlSession, int board_No) {
		
		return sqlSession.update("Admin.updateAdminCrewRecruitmentStatus", board_No);
	}
	//크루 모집 제목별 검색
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentBoardTitle(SqlSession sqlSession, String board_Title) {

		return sqlSession.selectList("Admin.selectCrewRecruitmentBoardTitle",board_Title);
	}
	//크루 모집 작성자로 검색
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentUserId(SqlSession sqlSession, String user_Id) {
		
		return sqlSession.selectList("Admin.selectCrewRecruitmentUserId", user_Id);
	}
	//크루활동 게시판 갯수 조회
	@Override
	public int getActListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getActListCount");
	}
	//크루활동게시판 정보 조회
	@Override
	public List<CrewActivityBoard> selectCrewActivityBoard(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectCrewActivityBoard", null, rowBounds);
	}
	//크루 활동 게시글 삭제처리
	@Override
	public int updateadminCrewActivityStatus(SqlSession sqlSession, int board_No) {
		
		return sqlSession.update("Admin.updateadminCrewActivityStatus", board_No);
	}
	//크루 활동 제목을 통한 검색처리
	@Override
	public List<CrewActivityBoard> selectCaSearchList(SqlSession sqlSession, String board_Title) {
		
		return sqlSession.selectList("Admin.selectCaSearchList", board_Title);
	}
	//크루 활동 작성자를 통한 검색처리
	@Override
	public List<CrewActivityBoard> selectCaIdSearchList(SqlSession sqlSession, String user_Id) {
		
		return sqlSession.selectList("Admin.selectCaIdSearchList",user_Id);
	}
	//공고게시판 리스트 카운트
	@Override
	public int getInformListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getInformListCount");
	}
	//공고페이지 정보 조회
	@Override
	public List<AdminInformBoard> selectAdminInformBoard(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectAdminInformBoard", null, rowBounds);
	}
	//공고 번호를 통한 삭제처리
	@Override
	public int updateAdminInformBoardStatus(SqlSession sqlSession, int boardNo) {
		
		return sqlSession.update("Admin.updateAdminInformBoardStatus", boardNo);
	}
	//공고 제목을 통한 검색처리
	@Override
	public List<AdminInformBoard> selectInformTitle(SqlSession sqlSession, String informBoardTitle) {
		
		return sqlSession.selectList("Admin.selectInformTitle", informBoardTitle);
	}
	//블랙 리스트 갯수 조회
	@Override
	public int getBlackBoardListCount(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getBlackBoardListCount");
	}
	//블랙 리스트 정보 조회
	@Override
	public List<CrewActivityBoard> selectBalckBoardList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectBalckBoardList", null, rowBounds);
	}
	//블랙 게시물 원래대로 돌리기
	@Override
	public int updateAdminBoardStatus(SqlSession sqlSession, int board_No) {
		
		return sqlSession.update("Admin.updateAdminBoardStatus", board_No);
	}
	//블랙 게시물 제목으로 조회
	@Override
	public List<CrewActivityBoard> blackTitleSelectBoard(SqlSession sqlSession, String board_Title) {
		
		return sqlSession.selectList("Admin.blackTitleSelectBoard", board_Title);
	}
	//월별 수익 조회
	@Override
	public List<Map<String, Object>> selectMonthlyincome(SqlSession sqlSession) {
		
		return sqlSession.selectList("Admin.selectMonthlyincome");
	}
	//일별 수익 조회
	@Override
	public List<Map<String, Object>> selectDayincome(SqlSession sqlSession) {
		
		return sqlSession.selectList("Admin.selectDayincome");
	}
	//유저 요일별 가입수치
	@Override
	public List<Map<String, Object>> selectUserJoinIncome(SqlSession sqlSession) {
		
		return sqlSession.selectList("Admin.selectUserJoinIncome");
	}
	//크루 요일별 가입수치
	@Override
	public List<Map<String, Object>> selectCrewJoinIncome(SqlSession sqlSession) {
		
		return sqlSession.selectList("Admin.selectCrewJoinIncome");
	}
	//크루 카테고리별 게시물 생성수치
	@Override
	public List<Map<String, Object>> selectCategoryBoardIncome(SqlSession sqlSession) {
		
		return sqlSession.selectList("Admin.selectCategoryBoardIncome");
	}
	//제휴 승인대기 리스트 갯수
	@Override
	public int getfacilityAccept(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getfacilityAccept");
	}
	//제휴시설등록대기 페이지
	@Override
	public List<Map<String, Object>> selectfacilityAccept(SqlSession sqlSession, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		
		return sqlSession.selectList("Admin.selectfacilityAccept", null, rowBounds);
	}
	//제휴시설 등록 업데이트
	@Override
	public int updateStatusFacility(SqlSession sqlSession, int fACILITY_NO) {
		
		return sqlSession.update("Admin.updateStatusFacility", fACILITY_NO);
	}
	//검색으로 제휴등록대기중 검색하기
	@Override
	public List<Map<String, Object>> selectfacilityNoneSearchList(SqlSession sqlSession, String facility_name) {
		
		return sqlSession.selectList("Admin.selectfacilityNoneSearchList", facility_name);
	}
	//등록된 제휴 리스트 조회
	@Override
	public int getfacilityList(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getfacilityList");
	}
	//제휴 목록 리스트 조회
	@Override
	public List<Map<String, Object>> facilityList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.facilityList",null, rowBounds);
	}
	//제휴 목록 업체명으로 검색
	@Override
	public List<Map<String, Object>> facilitySearchList(SqlSession sqlSession, String facility_name) {
		
		return sqlSession.selectList("Admin.facilitySearchList",facility_name);
	}
	
	//제휴시설삭제 리스트 갯수 조회
	@Override
	public int getfacilityDelectList(SqlSession sqlSession) {
		
		return sqlSession.selectOne("Admin.getfacilityDelectList");
	}
	//제휴 시설 삭제 리스트 조회
	@Override
	public List<Map<String, Object>> selectFacilityDelectList(SqlSession sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Admin.selectFacilityDelectList", null, rowBounds);
	}
	
	//제휴업체 삭제
		@Override
		public int statusFacilityDelete(SqlSession sqlSession, int fACILITY_NO) {
			
			return sqlSession.update("Admin.statusFacilityDelete",fACILITY_NO);
		}
		
	//제휴 시설 삭제 복원 
	@Override
	public int updateStatusFacilityY(SqlSession sqlSession, int fACILITY_NO) {
		
		return sqlSession.update("Admin.updateStatusFacilityY", fACILITY_NO);
	}
	//제휴 시설 삭제 목록 업체명으로 조회
	@Override
	public List<Map<String, Object>> selectFacilityDelectSearchList(SqlSession sqlSession, String facility_Name) {
		
		return sqlSession.selectList("Admin.selectFacilityDelectSearchList", facility_Name);
	}
	

}
