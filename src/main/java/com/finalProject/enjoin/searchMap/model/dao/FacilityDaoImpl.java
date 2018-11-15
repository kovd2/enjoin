package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;
import com.finalProject.enjoin.searchMap.model.vo.Facility;

@Repository
public class FacilityDaoImpl implements FacilityDao{

	@Override
	public List<Map<String, Object>> facilityList(SqlSessionTemplate sqlSession) {
		
		Facility f = new Facility();
		List<Map<String,Object>>list = null;
		list = sqlSession.selectList("Facility.facilityList",f);
		System.out.println("dao:"+list);
		
		
		return list;
	}

	@Override
	public List<Map<String, Object>> facility(SqlSessionTemplate sqlSession, String search) throws SearchListResultException {
		
		Facility f= new Facility();
		List<Map<String,Object>> list = null;
		
		f.setFacilityAddress(search);
		f.setFacilityEvent(search);
		f.setFacilityName(search);
		
		list = sqlSession.selectList("Facility.searchFacility", f);
		
		if(list!=null) {
			return list;
			
		}else {
		 throw new SearchListResultException("검색결과가 없습니다.");
			
		 
		}
		
	}

	@Override
	public Map<String, Object> selectOneDetail(SqlSessionTemplate sqlSession, int facilityNo) {
		
		Map<String,Object> list = null;
		list=sqlSession.selectOne("Facility.selectOneDetail",facilityNo);
	
		
		return list;
	}

	@Override
	public List<Map<String, Object>> detailResult(SqlSessionTemplate sqlSession, int facilityNo) {
		
		List<Map<String,Object>> list = null;
		list = sqlSession.selectList("Facility.detailResult", facilityNo);
	
		return list;
	}

	
	
}
