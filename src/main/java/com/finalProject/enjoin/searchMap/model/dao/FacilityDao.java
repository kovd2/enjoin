package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;

public interface FacilityDao {

	List<Map<String, Object>> facilityList(SqlSessionTemplate sqlSession, String address);

	List<Map<String, Object>> facility(SqlSessionTemplate sqlSession, String search)throws SearchListResultException ;

	Map<String, Object> selectOneDetail(SqlSessionTemplate sqlSession, int facilityNo);

	List<Map<String, Object>> detailResult(SqlSessionTemplate sqlSession, int facilityNo);
	
	
	

}
