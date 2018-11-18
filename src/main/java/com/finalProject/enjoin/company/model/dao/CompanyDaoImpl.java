package com.finalProject.enjoin.company.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.company.model.vo.Company;
import com.finalProject.enjoin.member.model.vo.Member;
import com.finalProject.enjoin.myPage.model.vo.PageInfo;
import com.finalProject.enjoin.payment.model.vo.Passrecord;
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
	public List<HashMap<String, Object>> selectUseHistory(SqlSessionTemplate sqlSession, PageInfo pi, String copNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return sqlSession.selectList("Company.selectUseHistory", copNo,rowBounds);
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


	//이용코드 확인 메소드
	@Override
	public int codeCk(SqlSessionTemplate sqlSession, String useCode) {
		
		return sqlSession.selectOne("Company.codeCheck", useCode);
	}


	//이용코드 수정 메소드
	@Override
	public int updateCode(SqlSessionTemplate sqlSession, String useCode) {
		
		return sqlSession.update("Company.codeUpdate", useCode);
	}

	//회원정보 수정용 메소드
	@Override
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("Company.memberUpdate", m);
	}


	//이용내역 페이징
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, String copNo) {

		return sqlSession.selectOne("Company.listCount", copNo);
	}






	
	

	



}
