package com.finalProject.enjoin.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.company.model.vo.Company;

@Repository
public class CompanyDaoImpl implements CompanyDao{

	//제휴시설 신청용 메소드
	@Override
	public int insertCompany(SqlSessionTemplate sqlSession, Company c) {
		
		
		return sqlSession.insert("Company.insertCompany", c);
	}
	
	

	



}
