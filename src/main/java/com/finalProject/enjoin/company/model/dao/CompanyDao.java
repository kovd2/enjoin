package com.finalProject.enjoin.company.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
import com.finalProject.enjoin.company.model.vo.Attachment;

public interface CompanyDao {

	int insertCompany(SqlSessionTemplate sqlSession, Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4);

	List<Company> selectCompanyInfo(SqlSessionTemplate sqlSession, String userId);

	//이용내역
	List<HashMap<String, Object>> selectUseHistory(SqlSessionTemplate sqlSession, PageInfo pi, String copNo);

	HashMap<String, Object> selectCompany(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap);

	//제휴시설 상세보기 이미지
	List<HashMap<String, Object>> selectCompanyImg(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap);

	//이용코드 확인 메소드
	int codeCk(SqlSessionTemplate sqlSession, String useCode);

	//이용코드 수정 메소드
	int updateCode(SqlSessionTemplate sqlSession, String useCode);
	
	//회원정보 수정 메소드
	int updateMember(SqlSessionTemplate sqlSession, Member m);

	//이용내역 페이징
	int getListCount(SqlSessionTemplate sqlSession, String copNo);

	//메인에 크루활동사진 뿌려주는거
	List<HashMap<String, Object>> CrewList(SqlSessionTemplate sqlSession);




}
