package com.finalProject.enjoin.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.crew.model.vo.Attachment;

@Repository
public class CompanyDaoImpl implements CompanyDao{

	//제휴시설 신청용 메소드
	@Override
	public int insertCompany(SqlSessionTemplate sqlSession, Company c, Attachment at1, Attachment at2, Attachment at3, Attachment at4) {
		
		int result = 0;
		
		int result1 = sqlSession.insert("Company.insertCompany", c);
		
		if(result1 > 0) {
			int facilityNo = sqlSession.selectOne("Company.selectFacilityId");
			
			//조회한 결과를 company객체에 담아주기
			c.setFacilityNo(facilityNo);
			
			int result2 = sqlSession.insert("Company.insertAttachment1", at1);
			int result3 = sqlSession.insert("Company.insertAttachment2", at2);
			int result4 = sqlSession.insert("Company.insertAttachment3", at3);
			int result5 = sqlSession.insert("Company.insertAttachment4", at4);
			
		}
		return result;
	}


	
	

	



}
