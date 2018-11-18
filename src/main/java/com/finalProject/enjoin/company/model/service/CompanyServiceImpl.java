package com.finalProject.enjoin.company.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.company.model.dao.CompanyDao;
import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.company.model.vo.Attachment;


@Service
public class CompanyServiceImpl implements CompanyService{

	//의존성 주입
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private CompanyDao cd;
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	
	
	//제휴시설신청용 메소드
	@Override
	public int insertCompany(Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4) {
		int result = 0;
		
		int result1 =cd.insertCompany(sqlSession, c, at1, at2, at3, at4);
		
		return result;

	}



	//제휴시설 리스트보기용 메소드
	@Override
	public List<Company> selectCompanyInfo(String userId) {
		
		
		return cd.selectCompanyInfo(sqlSession, userId);
	}


	//이용내역 보여주는 메소드

	@Override
	public List<HashMap<String, Object>> selectUseHistory(PageInfo pi, String copNo) {
		
		return cd.selectUseHistory(sqlSession, pi, copNo);
	}

	//데이터 뿌려주기용
	@Override
	public HashMap<String, Object> selectCompany(HashMap<String, Object> hmap) {
		
		return cd.selectCompany(sqlSession, hmap);
	}


	//제휴 시설 상세보기 이미지
	@Override
	public List<HashMap<String, Object>> selectCompanyImg(HashMap<String, Object> hmap) {
	
		return cd.selectCompanyImg(sqlSession, hmap);
	}


	//이용코드 조회 메소드
	@Override
	public int codeCk(String useCode) {
		
		return cd.codeCk(sqlSession, useCode);
	}


	//이용코드 상태 업데이트 메소드
	@Override
	public int updateCode(String useCode) {
		
		return cd.updateCode(sqlSession, useCode);
	}


	//회원정보 수정 메소드
	@Override
	public int updateMember(Member m) {
		
		return cd.updateMember(sqlSession, m);
	}



	//이용내역 페이징

	@Override
	public int getListCount(String copNo) {

		return cd.getListCount(sqlSession, copNo);
	}









		
		
}

