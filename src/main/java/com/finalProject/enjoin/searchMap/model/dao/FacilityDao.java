package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public interface FacilityDao {

	List<Map<String, Object>> facilityList(SqlSessionTemplate sqlSession);
	
	
	

}
