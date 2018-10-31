package com.finalProject.enjoin.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.company.model.vo.Company;

public interface CompanyDao {

	int insertCompany(SqlSessionTemplate sqlSession, Company c);


}
