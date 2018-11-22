package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.finalProject.enjoin.searchMap.model.exception.SearchListResultException;
import com.finalProject.enjoin.searchMap.model.vo.Review;

public interface FacilityDao {

	List<Map<String, Object>> facilityList(SqlSessionTemplate sqlSession, String address, int no);

	List<Map<String, Object>> facility(SqlSessionTemplate sqlSession, String search)throws SearchListResultException ;

	Map<String, Object> selectOneDetail(SqlSessionTemplate sqlSession, int facilityNo);

	List<Map<String, Object>> detailResult(SqlSessionTemplate sqlSession, int facilityNo);

	Map<String, Object> insertEnroll(SqlSessionTemplate sqlSession, Review rw);
	
	
	

}
