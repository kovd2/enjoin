package com.finalProject.enjoin.searchMap.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.searchMap.model.dao.FacilityDao;
import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;



@Service
public class FacilityServiceImpl implements FacilityService{
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Autowired
	private FacilityDao fd;

	@Override
	public List<Map<String, Object>> facilityList() {
		
		List<Map<String,Object>> list = null;
		list=fd.facilityList(sqlSession);
		
		
		return list;
	}

	@Override
	public List<Map<String, Object>> searchFacility(String search) throws SearchListResultException {
		
		List<Map<String,Object>> list =null;
		list=fd.facility(sqlSession,search);
		
		
		return list;
	}

	@Override
	public Map<String, Object> selectOneDetail(int facilityNo) {
		
		Map<String,Object> list = null;
		list=fd.selectOneDetail(sqlSession,facilityNo);
		return list;
	}

	@Override
	public Map<String, Object> detailResult(int facilityNo) {
		
		Map<String,Object> list = null;
		list = fd.detailResult(sqlSession,facilityNo);
		
		
		
		return list;
	}

	

}
