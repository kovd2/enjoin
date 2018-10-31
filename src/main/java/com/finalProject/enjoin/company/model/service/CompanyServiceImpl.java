package com.finalProject.enjoin.company.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.company.model.dao.CompanyDao;
import com.finalProject.enjoin.company.model.vo.Company;


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
	public int insertCompany(Company c) {
		
		return cd.insertCompany(sqlSession, c);
	}
	
	


	


	


}
