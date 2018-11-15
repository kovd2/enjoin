package com.finalProject.enjoin.company.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.company.model.vo.Attachment;

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

	
	//제휴시설 리스트 보기용 메소드
	@Override
	public List<Company> selectCompanyInfo(SqlSessionTemplate sqlSession, String userId) {
		
		
		return sqlSession.selectList("Company.selectCompanyInfo", userId);
	}

	//이용내역 리스트 보기용 메소드
	@Override
	public List<Company> selectUseHistory(SqlSessionTemplate sqlSession, String userId) {
		
		return sqlSession.selectList("Company.selectUseHistory", userId);
	}


	//데이터 뿌려주기용 상세보기
	@Override
	public HashMap<String, Object> selectCompany(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap) {
		
		
		return sqlSession.selectOne("Company.selectDetailCompany", hmap);
	}

	//제휴시설 상세보기 이미지 
	@Override
	public List<HashMap<String, Object>> selectCompanyImg(SqlSessionTemplate sqlSession, HashMap<String, Object> hmap) {
		
		return sqlSession.selectList("Company.selectCompanyImg", hmap);
	}


	
	

	



}
