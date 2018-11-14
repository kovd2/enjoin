package com.finalProject.enjoin.company.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.company.model.vo.Attachment;

public interface CompanyDao {

	int insertCompany(SqlSessionTemplate sqlSession, Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4);

	List<Company> selectCompanyInfo(SqlSessionTemplate sqlSession, String userId);

	List<Company> selectUseHistory(SqlSessionTemplate sqlSession, String userId);

	HashMap<String, Object> selectCompany(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap);




}
