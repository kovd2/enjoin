package com.finalProject.enjoin.company.model.service;

import com.finalProject.enjoin.company.model.vo.Company;

import java.util.List;

import com.finalProject.enjoin.company.model.vo.Attachment;

public interface CompanyService {

	int insertCompany(Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4);

	List<Company> selectCompanyInfo(String userId);

	List<Company> selectUseHistory(String userId);







}
