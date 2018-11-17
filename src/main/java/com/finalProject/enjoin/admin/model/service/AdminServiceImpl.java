package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.admin.model.dao.AdminDao;
import com.finalProject.enjoin.admin.model.vo.AdminInformBoard;
import com.finalProject.enjoin.crew.model.vo.Crew;
import com.finalProject.enjoin.crew.model.vo.CrewActivityBoard;
import com.finalProject.enjoin.crew.model.vo.CrewRecruitmentBoard;
import com.finalProject.enjoin.informBoard.model.vo.InformBoard;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private AdminDao ad;
	
	//멤버수 조회
	@Override
	public int getListCount() {
		
		return ad.getListCount(sqlSession);
	}
	//일반 회원 정보 조회
	@Override
	public List<Member> memberSelect(PageInfo pi) {
		
		return ad.memberSelect(sqlSession,pi);
	}
	//기업 회원 멤버수 조회
	@Override
	public int getListCount1() {
		
		return ad.getListCount1(sqlSession);
	}
	//기업 회원 정보 조회
	@Override
	public List<Member> companyMemberSelect(PageInfo pi1) {
	
		return ad.companyMemberSelect(sqlSession,pi1);
	}
	//일반회원 회원번호로 조회
	@Override
	public List<Member> userNoSelect(int userNo) {
		
		return ad.userNoSelect(sqlSession,userNo);
	}
	//유저아이디를 통한 조회
	@Override
	public List<Member> userIdSelect(String userId) {
		
		return ad.userIdSelect(sqlSession,userId);
	}
	
	//유저 동일이름 리스트 갯수조회
	@Override
	public int getMemberNameListCount(String userName) {
		
		return ad.getMemberNameListCount(sqlSession,userName);
	}
	//유저 이름을 통한 리스트 조회
	@Override
	public List<Member> userNameSelect(String userName, PageInfo pi) {
		
		return ad.userNameSelect(sqlSession,userName,pi);
	}
	//유저 번호를 통한 조회
	@Override
	public List<Member> userPhoneSelect(String phone) {
		
		return ad.userPhoneSelect(sqlSession,phone);
	}
	//이메일을 통한 조회
	@Override
	public List<Member> userEmailSelect(String email) {
		
		return ad.userEmailSelect(sqlSession,email);
	}
	//유저 업데이트 처리
	@Override
	public int updateStatusMember(int userNo) {
		
		return ad.updateStatusMember(sqlSession,userNo);
	}
	//기업 상호명을 통한 조회
	@Override
	public List<Member> copNameSelect(String copName) {
		
		return ad.copNameSelect(sqlSession,copName);
	}
	//기업 아이디를 통한 조회
	@Override
	public List<Member> copUserIdSelect(String userId) {

		return ad.copUserIdSelect(sqlSession,userId);
	}
	//기업 사업자 등록번호를 통한 조회
	@Override
	public List<Member> copNoSelect(String copNo) {

		return ad.copNoSelect(sqlSession,copNo);
	}
	//기업 담당자 이메일을 통한 조회
	@Override
	public List<Member> managerEmailSelect(String managerEmail) {
		
		return ad.managerEmailSelect(sqlSession,managerEmail);
	}
	//기업회원 블랙처리
	@Override
	public int updateCopStatusMember(int userNo) {
		
		return ad.updateCopStatusMember(sqlSession,userNo);
	}
	//블랙회원 리스트 갯수
	@Override
	public int getBlackListCount() {
		
		return ad.getBlackListCount(sqlSession);
	}
	//블랙 일반회원 정보 조회
	@Override
	public List<Member> selectBlackMemberList(PageInfo pi) {
		
		return ad.selectBlackMemberList(sqlSession,pi);
	}
	//블랙 기업회원 리스트 갯수
	@Override
	public int getBlackListCount1() {
		
		return ad.getBlackListCount1(sqlSession);
	}
	//블랙 기업회원 정보 조회
	@Override
	public List<Member> companyBlackMemberSelect(PageInfo pi1) {
		
		return ad.companyBlackMemberSelect(sqlSession,pi1);
	}
	//블랙 일반회원 해제처리
	@Override
	public int updateStatusBlackMember(int userNo) {
		
		return ad.updateStatusBlackMember(sqlSession,userNo);
	}
	//블랙 기업회원 해제처리
	@Override
	public int updateCopStatusBlackMember(int userNo) {
		
		return ad.updateCopStatusBlackMember(sqlSession,userNo);
	}
	//블랙회원 아이디 검색
	@Override
	public List<Member> userBlackIdSelect(String userId) {
		
		return ad.userBlackIdSelect(sqlSession,userId);
	}
	//블랙회원 이름 리스트 갯수 조회
	@Override
	public int getBlackMemberNameListCount(String userName) {
		
		return ad.getBlackMemberNameListCount(sqlSession,userName);
	}
	//블랙회원 이름 일반 정보 조회
	@Override
	public List<Member> userBlackNameSelect(String userName, PageInfo pi) {
		
		return ad.userBlackNameSelect(sqlSession,userName,pi);
	}
	//블랙회원 상호명으로 정보 조회
	@Override
	public List<Member> copNameBlackSelect(String copName) {
		
		return ad.copNameBlackSelect(sqlSession,copName);
	}
	//블랙 기업회원 아이디로 정보 조회
	@Override
	public List<Member> blackCopUserIdSelect(String userId) {
		
		return ad.blackCopUserIdSelect(sqlSession,userId);
	}
	//크루 리스트 갯수 조회
	@Override
	public int getCrewListCount() {
		
		return ad.getCrewListCount(sqlSession);
	}
	//크루 리스트 정보 조회
	@Override
	public List<Crew> crewListSelect(PageInfo pi) {
		
		return ad.crewListSelect(sqlSession,pi);
	}
	//블랙 크루 리스트 갯수 조회
	@Override
	public int getCrewBlackListCount1() {
		
		return ad.getCrewBlackListCount1(sqlSession);
	}
	//블랙 크루 리스트 정보 조회
	@Override
	public List<Crew> blackCrewListSelect(PageInfo pi1) {
		
		return ad.blackCrewListSelect(sqlSession,pi1);
	}
	//크루를 블랙 상태로 만듬
	@Override
	public int updateStatusBlackCrew(int crew_Id) {
		
		return ad.updateStatusBlackCrew(sqlSession,crew_Id);
	}
	//크루의 블랙 상태를 풀음
	@Override
	public int updateStatusCrew(int crew_Id) {
		
		return ad.updateStatusCrew(sqlSession,crew_Id);
	}
	//크루명을 통한 조회
	@Override
	public List<Crew> crewNameSelect(String crew_Name) {
		
		return ad.crewNameSelect(sqlSession,crew_Name);
	}
	//크루장을 통한 조회
	@Override
	public List<Crew> crewBoassSelect(String user_Id) {
		
		return ad.crewBoassSelect(sqlSession,user_Id);
	}
	//블랙크루 크루명을 통한 조회
	@Override
	public List<Crew> crewBlackName(String crew_Name) {
		
		return ad.crewBlackName(sqlSession,crew_Name);
	}
	//블랙크루 크루장을 통한 조회
	@Override
	public List<Crew> crewBlackUser(String user_Id) {
		
		return ad.crewBlackUser(sqlSession,user_Id);
	}
	//크루모집 게시판 게시글 갯수 조회
	@Override
	public int getCrtListCount() {
		
		return ad.getCrtListCount(sqlSession);
	}
	//크루모집 게시판 정보 조회
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentBoardList(PageInfo pi) {
		
		return ad.selectCrewRecruitmentBoardList(sqlSession,pi);
	}
	//크루모집 게시글 관리자 권한으로 삭제
	@Override
	public int updateAdminCrewRecruitmentStatus(int board_No) {
		
		return ad.updateAdminCrewRecruitmentStatus(sqlSession,board_No);
	}
	//크루모집 제목으로 게시물 조회
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentBoardTitle(String board_Title) {
		
		return ad.selectCrewRecruitmentBoardTitle(sqlSession,board_Title);
	}
	//크루모집 작성자로 게시물 조회
	@Override
	public List<CrewRecruitmentBoard> selectCrewRecruitmentUserId(String user_Id) {
		
		return ad.selectCrewRecruitmentUserId(sqlSession,user_Id);
	}
	//크루활동 게시판 리스트 갯수
	@Override
	public int getActListCount() {
		
		return ad.getActListCount(sqlSession);
	}
	//크루 활동 게시판 정보 조회
	@Override
	public List<CrewActivityBoard> selectCrewActivityBoard(PageInfo pi) {
		
		return ad.selectCrewActivityBoard(sqlSession,pi);
	}
	//크루 활동 게시글 삭제처리
	@Override
	public int updateadminCrewActivityStatus(int board_No) {
		
		return ad.updateadminCrewActivityStatus(sqlSession,board_No);
	}
	//크루활동 제목을 통한 검색처리
	@Override
	public List<CrewActivityBoard> selectCaSearchList(String board_Title) {
		
		return ad.selectCaSearchList(sqlSession,board_Title);
	}
	//크루활동 작성자를 통한 검색처리
	@Override
	public List<CrewActivityBoard> selectCaIdSearchList(String user_Id) {
		
		return ad.selectCaIdSearchList(sqlSession,user_Id);
	}
	//공고 페이지 리스트 카운트
	@Override
	public int getInformListCount() {
		
		return ad.getInformListCount(sqlSession);
	}
	//공고 페이지 정보 조회
	@Override
	public List<AdminInformBoard> selectAdminInformBoard(PageInfo pi) {
		
		return ad.selectAdminInformBoard(sqlSession,pi);
	}
	//공고 번호를 통한 삭제처리
	@Override
	public int updateAdminInformBoardStatus(int boardNo) {
		
		return ad.updateAdminInformBoardStatus(sqlSession,boardNo);
	}
	//공고 검색을 통한 검색처리
	@Override
	public List<AdminInformBoard> selectInformTitle(String informBoardTitle) {
		
		return ad.selectInformTitle(sqlSession,informBoardTitle);
	}
	//블랙리스트 갯수 리스트 조회
	@Override
	public int getBlackBoardListCount() {
		
		return ad.getBlackBoardListCount(sqlSession);
	}
	//블랙 리스트 게시물 조회
	@Override
	public List<CrewActivityBoard> selectBalckBoardList(PageInfo pi) {
		
		return ad.selectBalckBoardList(sqlSession,pi);
	}
	//블랙 게시물 원래대로 돌리기
	@Override
	public int updateAdminBoardStatus(int board_No) {
		
		return ad.updateAdminBoardStatus(sqlSession,board_No);
	}
	//블랙 게시물 제목으로 조회
	@Override
	public List<CrewActivityBoard> blackTitleSelectBoard(String board_Title) {
		
		return ad.blackTitleSelectBoard(sqlSession,board_Title);
	}
	//월간 수입 차트 조회
	@Override
	public List<Map<String, Object>> selectMonthlyincome() {
		
		return ad.selectMonthlyincome(sqlSession);
	}
	//일별 수입 조회
	@Override
	public List<Map<String, Object>> selectDayincome() {
		
		return ad.selectDayincome(sqlSession);
	}
	//유저 요일별 가입수치
	@Override
	public List<Map<String, Object>> selectUserJoinIncome() {
		
		return ad.selectUserJoinIncome(sqlSession);
	}
	//크루 요일별 가입수치
	@Override
	public List<Map<String, Object>> selectCrewJoinIncome() {
		
		return ad.selectCrewJoinIncome(sqlSession);
	}
	//카테고리별 게시글 생성수치
	@Override
	public List<Map<String, Object>> selectCategoryBoardIncome() {
		
		return ad.selectCategoryBoardIncome(sqlSession);
	}
	//제휴승인대기 리스트 갯수
	@Override
	public int getfacilityAccept() {
		
		return ad.getfacilityAccept(sqlSession);
	}
	//제휴 승인대기 리스트 조회
	@Override
	public List<Map<String, Object>> selectfacilityAccept(PageInfo pi) {
		
		return ad.selectfacilityAccept(sqlSession,pi);
	}
	//제휴 승인 업데이트
	@Override
	public int updateStatusFacility(int fACILITY_NO) {
		
		return ad.updateStatusFacility(sqlSession,fACILITY_NO);
	}
	//승인대기중 제휴 검색 으로 찾기
	@Override
	public List<Map<String, Object>> selectfacilityNoneSearchList(String facility_name) {
		
		return ad.selectfacilityNoneSearchList(sqlSession,facility_name);
	}
	//제휴 승인 된 리스트 갯수 조회
	@Override
	public int getfacilityList() {
		
		return ad.getfacilityList(sqlSession);
	}
	//제휴 리스트 조회
	@Override
	public List<Map<String, Object>> facilityList(PageInfo pi) {
		
		return ad.facilityList(sqlSession,pi);
	}
	//제휴 업체명으로 조회
	@Override
	public List<Map<String, Object>> facilitySearchList(String facility_name) {
		
		return ad.facilitySearchList(sqlSession,facility_name);
	}
	


}
