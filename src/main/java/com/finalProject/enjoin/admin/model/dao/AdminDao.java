package com.finalProject.enjoin.admin.model.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.finalProject.enjoin.admin.model.vo.AdminInformBoard;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface AdminDao {
	
	//멤버수 조회
	int getListCount(SqlSession sqlSession);
	
	//일반회원정보 조회
	List<Member> memberSelect(SqlSession sqlSession, PageInfo pi);
	
	//기업회원 리스트 조회
	int getListCount1(SqlSession sqlSession);
	
	//기업 회원 정보 조회
	List<Member> companyMemberSelect(SqlSession sqlSession, PageInfo pi1);
	
	//일반회원 번호로 조회
	List<Member> userNoSelect(SqlSession sqlSession, int userNo);

	//일반회원 아이디로 조회
	List<Member> userIdSelect(SqlSession sqlSession, String userId);

	//유저이름을 통한 아이디 조회
	List<Member> userNameSelect(SqlSession sqlSession, String userName, PageInfo pi);
	
	//유저 이름 리스트 갯수 조회
	int getMemberNameListCount(SqlSession sqlSession, String userName);
	
	//일반회원 전화번호를 통한 조회
	List<Member> userPhoneSelect(SqlSession sqlSession, String phone);
	
	//이메일을 통한 조회
	List<Member> userEmailSelect(SqlSession sqlSession, String email);
	
	//유저 블랙처리
	int updateStatusMember(SqlSession sqlSession, int userNo);
	
	//기업 상호명을 통한 조회
	List<Member> copNameSelect(SqlSession sqlSession, String copName);
	
	//기업 아이디를 통한 조회
	List<Member> copUserIdSelect(SqlSession sqlSession, String userId);
	
	//기업 사업자등록번호를 통한 조회
	List<Member> copNoSelect(SqlSession sqlSession, String copNo);
	
	//기업 담당자 이메일을 통한 조회
	List<Member> managerEmailSelect(SqlSession sqlSession, String managerEmail);
	
	//기업회원 블랙처리
	int updateCopStatusMember(SqlSession sqlSession, int userNo);
	
	//블랙회원 리스트 갯수
	int getBlackListCount(SqlSession sqlSession);
	
	//블랙회원 정보 조회
	List<Member> selectBlackMemberList(SqlSession sqlSession, PageInfo pi);
	
	//블랙 기업 회원 리스트 갯수
	int getBlackListCount1(SqlSession sqlSession);
	
	//블랙 기업회원 정보 조회
	List<Member> companyBlackMemberSelect(SqlSession sqlSession, PageInfo pi1);

	//블랙 일반회원 해제 처리
	int updateStatusBlackMember(SqlSession sqlSession, int userNo);

	//블랙 기업회원 해제 처리
	int updateCopStatusBlackMember(SqlSession sqlSession, int userNo);
	
	//블랙회원 아이디 검색
	List<Member> userBlackIdSelect(SqlSession sqlSession, String userId);
	
	//블랙회원 이름 리스트 갯수 조회
	int getBlackMemberNameListCount(SqlSession sqlSession, String userName);

	//블랙 회원 이름으로 정보 조회
	List<Member> userBlackNameSelect(SqlSession sqlSession, String userName, PageInfo pi);
	
	//블랙 회원 상호명으로 정보 조회 
	List<Member> copNameBlackSelect(SqlSession sqlSession, String copName);
	
	//블랙 기업 회원 아이디로 정보 조회
	List<Member> blackCopUserIdSelect(SqlSession sqlSession, String userId);
	
	//크루 리스트 갯수 조회
	int getCrewListCount(SqlSession sqlSession);
	
	//크루 정보 조회
	List<Crew> crewListSelect(SqlSession sqlSession, PageInfo pi);
	
	//블랙크루 리스트 갯수 조회
	int getCrewBlackListCount1(SqlSession sqlSession);
	
	//블랙크루 리스트 정보 조회
	List<Crew> blackCrewListSelect(SqlSession sqlSession, PageInfo pi1);
	
	//크루를 블랙상태로 만듬
	int updateStatusBlackCrew(SqlSession sqlSession, int crew_Id);
	
	//크루의 블랙상태를 풀음
	int updateStatusCrew(SqlSession sqlSession, int crew_Id);
	
	//크루명을 통한 조회
	List<Crew> crewNameSelect(SqlSession sqlSession, String crew_Name);
	
	//크루장을 통한 조회
	List<Crew> crewBoassSelect(SqlSession sqlSession, String user_Id);
	
	//블랙크루 크루명을 통한 조회
	List<Crew> crewBlackName(SqlSession sqlSession, String crew_Name);

	//블랙 크루 크루장을 통한 조회
	List<Crew> crewBlackUser(SqlSession sqlSession, String user_Id);
	
	//크루 모집 게시판 게시글 갯수 조회
	int getCrtListCount(SqlSession sqlSession);
	
	//크루 모집 게시판 정보 보기
	List<CrewRecruitmentBoard> selectCrewRecruitmentBoardList(SqlSession sqlSession, PageInfo pi);
	
	//크루게시글 관리자 권한으로 삭제 처리
	int updateAdminCrewRecruitmentStatus(SqlSession sqlSession, int board_No);
	
	//크루게시판 제목으로 게시물 조회
	List<CrewRecruitmentBoard> selectCrewRecruitmentBoardTitle(SqlSession sqlSession, String board_Title);
	
	//크루게시판 작성자로 게시물 조회
	List<CrewRecruitmentBoard> selectCrewRecruitmentUserId(SqlSession sqlSession, String user_Id);
	
	//크루활동 게시판 갯수 조회
	int getActListCount(SqlSession sqlSession);

	//크루활동 게시판 정보 조회
	List<CrewActivityBoard> selectCrewActivityBoard(SqlSession sqlSession, PageInfo pi);
	
	//크루 활동 게시글 삭제처리
	int updateadminCrewActivityStatus(SqlSession sqlSession, int board_No);
	
	//크루활동 제목을 통한 검색처리
	List<CrewActivityBoard> selectCaSearchList(SqlSession sqlSession, String board_Title);
	
	//크루활동 작성자를 통한 검색처리
	List<CrewActivityBoard> selectCaIdSearchList(SqlSession sqlSession, String user_Id);
	
	//공고페이지 리스트 카운트
	int getInformListCount(SqlSession sqlSession);
	
	//공고페이지 정보 조회
	List<AdminInformBoard> selectAdminInformBoard(SqlSession sqlSession, PageInfo pi);
	
	//공고번호를 통한 공고 업데이트
	int updateAdminInformBoardStatus(SqlSession sqlSession, int boardNo);
	
	//공고제목을 통한 검색처리
	List<AdminInformBoard> selectInformTitle(SqlSession sqlSession, String informBoardTitle);
	
	//블랙리스트 갯수 조회
	int getBlackBoardListCount(SqlSession sqlSession);
	
	//블랙리스트 게시물 조회
	List<CrewActivityBoard> selectBalckBoardList(SqlSession sqlSession, PageInfo pi);
	
	//블랙 게시물 원래대로 돌리기
	int updateAdminBoardStatus(SqlSession sqlSession, int board_No);
	
	//블랙 게시물 제목으로조회
	List<CrewActivityBoard> blackTitleSelectBoard(SqlSession sqlSession, String board_Title);
	
	//월간 수입 조회
	List<Map<String, Object>> selectMonthlyincome(SqlSession sqlSession);
	
	//일별 수입 조회
	List<Map<String, Object>> selectDayincome(SqlSession sqlSession);
	
	//유저 요일별 가입수치
	List<Map<String, Object>> selectUserJoinIncome(SqlSession sqlSession);
	
	//크루 요일별 가입수치
	List<Map<String, Object>> selectCrewJoinIncome(SqlSession sqlSession);
	
	//게시글 카테고리별 생성수치
	List<Map<String, Object>> selectCategoryBoardIncome(SqlSession sqlSession);
	
	//제휴 승인대기 리스트 목록
	int getfacilityAccept(SqlSession sqlSession);
	
	//제휴 승인대기 리스트 조회
	List<Map<String, Object>> selectfacilityAccept(SqlSession sqlSession, PageInfo pi);
	
	//제휴 승인 업데이트
	int updateStatusFacility(SqlSession sqlSession, int fACILITY_NO);
	
	//제휴 승인 검색
	List<Map<String, Object>> selectfacilityNoneSearchList(SqlSession sqlSession, String facility_name);
	
	//엔조인 제휴 등록 리스트 조회
	int getfacilityList(SqlSession sqlSession);

	//제휴 목록 조회
	List<Map<String, Object>> facilityList(SqlSession sqlSession, PageInfo pi);
	
	//제휴 업체명으로 검색
	List<Map<String, Object>> facilitySearchList(SqlSession sqlSession, String facility_name);
	
	//제휴시설삭제
	int statusFacilityDelete(SqlSession sqlSession, int fACILITY_NO);
	
	//제휴시설삭제리스트 갯수 조회
	int getfacilityDelectList(SqlSession sqlSession);
	
	//제휴 시설 삭제 리스트 조회
	List<Map<String, Object>> selectFacilityDelectList(SqlSession sqlSession, PageInfo pi);
	//제휴 시설 삭제 복원
	int updateStatusFacilityY(SqlSession sqlSession, int fACILITY_NO);

	//제휴시설 삭제리스트 업체명으로 조회
	List<Map<String, Object>> selectFacilityDelectSearchList(SqlSession sqlSession, String facility_Name);

	
	
	
	

	
	
	


	
	
	
	
	
	
	

}
