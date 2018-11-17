package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.finalProject.enjoin.admin.model.vo.AdminInformBoard;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

public interface AdminService {
	
	//일반회원 리스트 갯수
	int getListCount();
	
	//일반회원 리스트 조회
	List<Member> memberSelect(PageInfo pi);
	
	//기업회원 리스트 갯수
	int getListCount1();
	
	//기업 회원 리스트 조회
	List<Member> companyMemberSelect(PageInfo pi1);
	
	//유저 넘버를 통한 조회
	List<Member> userNoSelect(int userNo);
	
	//유저 아이디를 통한 조회
	List<Member> userIdSelect(String userId);
	
	//유저이름을 통한 조회
	List<Member> userNameSelect(String userName, PageInfo pi);
	
	//유저동일이름 갯수 조회
	int getMemberNameListCount(String userName);

	//전화번호를 통한 조회
	List<Member> userPhoneSelect(String phone);
	
	//이메일을 통한 조회
	List<Member> userEmailSelect(String email);
	
	//유저 블랙 처리 
	int updateStatusMember(int userNo);
	
	//기업상호명을 통한 검색
	List<Member> copNameSelect(String copName);
	
	//기업 유저 아이디를 통한 검색
	List<Member> copUserIdSelect(String userId);
	
	//기업 사업자등록번호를 통한 조회
	List<Member> copNoSelect(String copNo);
	
	//기업 담당자 이메일을 통한 조회
	List<Member> managerEmailSelect(String managerEmail);
	
	//기업 회원 블랙처리
	int updateCopStatusMember(int userNo);
	
	//블랙회원 리스트 갯수
	int getBlackListCount();
	
	//블랙일반회원 정보 조회
	List<Member> selectBlackMemberList(PageInfo pi);
	
	//블랙기업회원 리스트 갯수
	int getBlackListCount1();
	
	//블랙 기업회원 정보 조회
	List<Member> companyBlackMemberSelect(PageInfo pi1);
	
	//일반회원 블랙 해제 처리
	int updateStatusBlackMember(int userNo);
	
	//기업회원 블랙 해제 처리
	int updateCopStatusBlackMember(int userNo);
	
	//블랙일반회원 아이디 검색
	List<Member> userBlackIdSelect(String userId);
	
	//블랙일반회원 이름 동일인물 갯수
	int getBlackMemberNameListCount(String userName);

	//블랙 일반회원 이름 정보 조회
	List<Member> userBlackNameSelect(String userName, PageInfo pi);
	
	//블랙기업회원 상호명으로 검색
	List<Member> copNameBlackSelect(String copName);
	
	//블랙기업회원 아이디로 검색
	List<Member> blackCopUserIdSelect(String userId);
	
	//크루 리스트 갯수 조회
	int getCrewListCount();
	
	//크루 회원 조회
	List<Crew> crewListSelect(PageInfo pi);

	//블랙 크루 리스트 갯수 조회
	int getCrewBlackListCount1();
	
	//블랙 크루 정보 조회
	List<Crew> blackCrewListSelect(PageInfo pi1);
	
	//크루를 블랙상태로 만듬
	int updateStatusBlackCrew(int crew_Id);
	
	//크루의 블랙상태를 풀음
	int updateStatusCrew(int crew_Id);
	
	//크루 네임을 통한 조회
	List<Crew> crewNameSelect(String crew_Name);
	
	//크루장을 통한 조회
	List<Crew> crewBoassSelect(String user_Id);
	
	//블랙크루 이름을 통한 조회
	List<Crew> crewBlackName(String crew_Name);
	
	//블랙크루 크루장을 통한 조회
	List<Crew> crewBlackUser(String user_Id);
	
	//크루 모집 게시판 게시글 갯수 조회
	int getCrtListCount();
	
	//크루 모집 게시판 보기
	List<CrewRecruitmentBoard> selectCrewRecruitmentBoardList(PageInfo pi);
	
	//크루활동 게시글 관리자 권한으로 삭제하기
	int updateAdminCrewRecruitmentStatus(int board_No);
	
	//크루활동 제목으로 게시물 조회
	List<CrewRecruitmentBoard> selectCrewRecruitmentBoardTitle(String board_Title);
	
	//크루활동 작성자로 게시물 조회
	List<CrewRecruitmentBoard> selectCrewRecruitmentUserId(String user_Id);
	
	//크루 활동 게시판 게시글 갯수 조회
	int getActListCount();
	
	//크루 활동 게시판 정보 조회
	List<CrewActivityBoard> selectCrewActivityBoard(PageInfo pi);
	
	//크루 활동 게시글 삭제처리
	int updateadminCrewActivityStatus(int board_No);
	
	//크루 활동 제목을 통한 크루게시판 게시글 조회
	List<CrewActivityBoard> selectCaSearchList(String board_Title);
	
	//크루 활동 작성자를 통한 조회
	List<CrewActivityBoard> selectCaIdSearchList(String user_Id);
	
	//공고 페이지 리스트 카운트
	int getInformListCount();
	
	//공고 페이지 정보 조회
	List<AdminInformBoard> selectAdminInformBoard(PageInfo pi);
	
	//공고 번호를 통한 삭제처리
	int updateAdminInformBoardStatus(int boardNo);
	
	//공고 제목을 통한 검색처리
	List<AdminInformBoard> selectInformTitle(String informBoardTitle);
	
	//블랙게시물 전체조회
	int getBlackBoardListCount();
	
	//블랙걸린 게시물 전체조회
	List<CrewActivityBoard> selectBalckBoardList(PageInfo pi);
	
	//블랙 게시물 원래대로 돌리기
	int updateAdminBoardStatus(int board_No);
	
	//블랙 게시물 제목으로 조회
	List<CrewActivityBoard> blackTitleSelectBoard(String board_Title);
	
	//월별수입조회
	List<Map<String, Object>> selectMonthlyincome();
	
	//일별수입조회
	List<Map<String, Object>> selectDayincome();
	
	//유저 요일별 가입 수치
	List<Map<String, Object>> selectUserJoinIncome();
	
	//크루 요일별 가입 수치
	List<Map<String, Object>> selectCrewJoinIncome();
	
	//카테고리별 게시글 생성수치
	List<Map<String, Object>> selectCategoryBoardIncome();
	
	//제휴승인대기 리스트목록
	int getfacilityAccept();
	
	//제휴 승인대기 리스트 조회
	List<Map<String, Object>> selectfacilityAccept(PageInfo pi);
	
	//제휴 승인하기 
	int updateStatusFacility(int fACILITY_NO);
	
	//제휴시설 검색
	List<Map<String, Object>> selectfacilityNoneSearchList(String facility_name);
	
	//엔조인 등록 제휴업체 갯수 조회
	int getfacilityList();

	//제휴시설 리스트 조회
	List<Map<String, Object>> facilityList(PageInfo pi);
	
	//등록된 제휴 리스트  업체명으로 검색
	List<Map<String, Object>> facilitySearchList(String facility_name);
	


	
	

	

	
}
