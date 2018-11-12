package com.finalProject.enjoin.admin.model.service;

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
	


}
