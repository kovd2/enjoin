package com.finalProject.enjoin.searchMap.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.enjoin.searchMap.model.dao.FacilityDao;



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



}
