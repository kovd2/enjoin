package com.finalProject.enjoin.searchMap.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

	
	
}
