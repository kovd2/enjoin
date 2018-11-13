package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.admin.model.dao.AdminDao;
import com.finalProject.enjoin.crew.model.vo.Crew;
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
	


}
