package com.finalProject.enjoin.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.crew.model.vo.Attachment;

public interface CompanyDao {

	int insertCompany(SqlSessionTemplate sqlSession, Company c, Attachment at1, Attachment at2);




}
