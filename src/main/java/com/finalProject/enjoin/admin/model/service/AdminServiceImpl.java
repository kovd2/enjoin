package com.finalProject.enjoin.admin.model.service;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.admin.model.dao.AdminDao;
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
	


}
