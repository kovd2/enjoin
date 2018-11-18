package com.finalProject.enjoin.company.model.service;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Passrecord;

import java.util.HashMap;
import java.util.List;

import com.finalProject.enjoin.company.model.vo.Attachment;

public interface CompanyService {

	int insertCompany(Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4);

	//제휴시설리스트
	List<Company> selectCompanyInfo(String userId);
	
	//이용내역
	List<HashMap<String, Object>> selectUseHistory(PageInfo pi, String copNo);

	
	//상세보기 데이터 뿌려주기용 
	HashMap<String, Object> selectCompany(HashMap<String, Object> hmap);

	//제휴시설 상세보기 이미지
	List<HashMap<String, Object>> selectCompanyImg(HashMap<String, Object> hmap);

	//이용코드 조회 메소드
	int codeCk(String useCode);

	//이용코드 업데이트 메소드
	int updateCode(String useCode);

	//회원정보 수정 메소드
	int updateMember(Member m);

	//페이징
	int getListCount(String copNo);






	







}
