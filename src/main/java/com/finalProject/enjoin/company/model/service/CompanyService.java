package com.finalProject.enjoin.company.model.service;

import com.finalProject.enjoin.company.model.vo.Company;

import java.util.HashMap;
import java.util.List;

import com.finalProject.enjoin.company.model.vo.Attachment;

public interface CompanyService {

	int insertCompany(Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4);

	List<Company> selectCompanyInfo(String userId);

	List<Company> selectUseHistory(String userId);

	
	//상세보기 데이터 뿌려주기용 
	HashMap<String, Object> selectCompany(HashMap<String, Object> hmap);

	//제휴시설 상세보기 이미지
	List<HashMap<String, Object>> selectCompanyImg(HashMap<String, Object> hmap);







}
