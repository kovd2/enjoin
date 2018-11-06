package com.finalProject.enjoin.company.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.company.model.dao.CompanyDao;
import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.crew.model.vo.Attachment;


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
	
	

	
	


	


	


}
